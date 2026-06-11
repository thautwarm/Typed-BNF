# Development image for Typed-BNF.
#
# Build:
#   docker build -t typed-bnf-dev .
# Run from repository root:
#   docker run --rm -it -v "$PWD:/workspace" -w /workspace typed-bnf-dev

FROM mcr.microsoft.com/dotnet/sdk:8.0

ARG DEBIAN_FRONTEND=noninteractive
ARG NODE_MAJOR=22
ARG ANTLR_VERSION=4.13.2
ARG USERNAME=dev
ARG USER_UID=1000
ARG USER_GID=1000

ENV USERNAME=${USERNAME} \
    DOTNET_CLI_TELEMETRY_OPTOUT=1 \
    DOTNET_NOLOGO=1 \
    DOTNET_CLI_HOME=/home/${USERNAME} \
    PNPM_HOME=/home/${USERNAME}/.local/share/pnpm \
    PATH=/home/${USERNAME}/.local/share/pnpm:/workspace/dist:/usr/local/bin:${PATH}

# NativeAOT requires a native toolchain.  Java is required by ANTLR.
# OCaml tooling is included for the legacy ocaml-menhir backend tests.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        bash \
        ca-certificates \
        clang \
        curl \
        git \
        gnupg \
        gosu \
        jq \
        less \
        lld \
        make \
        openjdk-17-jre-headless \
        python3 \
        python3-pip \
        unzip \
        zip \
        zlib1g-dev \
        ocaml-nox \
        dune \
        menhir \
        libsedlex-ocaml-dev \
        utop \
    && rm -rf /var/lib/apt/lists/*

# Node.js, pnpm, TypeScript compiler and antlr-ng for TypeScript backends.
RUN curl -fsSL "https://deb.nodesource.com/setup_${NODE_MAJOR}.x" | bash - \
    && apt-get install -y --no-install-recommends nodejs \
    && npm install -g pnpm antlr-ng typescript \
    && npm cache clean --force \
    && rm -rf /var/lib/apt/lists/*

# Deno is used by build.ts.
RUN curl -fsSL https://deno.land/install.sh | DENO_INSTALL=/usr/local sh

# Deterministic antlr4 wrapper.  This avoids depending on a host-level antlr4 install.
RUN mkdir -p /opt/antlr \
    && curl -fsSL "https://www.antlr.org/download/antlr-${ANTLR_VERSION}-complete.jar" \
        -o "/opt/antlr/antlr-${ANTLR_VERSION}-complete.jar" \
    && printf '%s\n' \
        '#!/usr/bin/env bash' \
        "exec java -jar /opt/antlr/antlr-${ANTLR_VERSION}-complete.jar \"\$@\"" \
        > /usr/local/bin/antlr4 \
    && chmod +x /usr/local/bin/antlr4

# Python runtime for the legacy python-lark backend.
RUN python3 -m pip install --no-cache-dir --break-system-packages lark

# Convenience wrapper for scripts that invoke `tbnf` directly.
RUN printf '%s\n' \
        '#!/usr/bin/env bash' \
        'set -euo pipefail' \
        'for exe in ./dist/TBNF.CLI.AOT ./dist/TBNF.CLI ./dist/TBNF.CLI.exe; do' \
        '  if [ -x "$exe" ]; then exec "$exe" "$@"; fi' \
        'done' \
        'if [ -f ./cli/bin/Debug/net8.0/TBNF.CLI.dll ]; then' \
        '  exec dotnet ./cli/bin/Debug/net8.0/TBNF.CLI.dll "$@"' \
        'fi' \
        'echo "tbnf executable not found. Run: deno run -A build.ts aot" >&2' \
        'exit 127' \
        > /usr/local/bin/tbnf \
    && chmod +x /usr/local/bin/tbnf

# Create a default dev user. At runtime the entrypoint remaps it to the
# bind-mounted checkout owner, so generated files are not root-owned.
RUN groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME} \
    && mkdir -p /workspace /home/${USERNAME}/.local/share/pnpm \
    && chown -R ${USERNAME}:${USERNAME} /workspace /home/${USERNAME}

# Make nomake builds work out of the box on a bind-mounted checkout, then drop
# privileges to the host uid/gid that owns /workspace.
RUN printf '%s\n' \
        '#!/usr/bin/env bash' \
        'set -e' \
        'export HOME=/home/${USERNAME}' \
        'export DOTNET_CLI_HOME=/home/${USERNAME}' \
        'export PNPM_HOME=/home/${USERNAME}/.local/share/pnpm' \
        'if [ "$(id -u)" = "0" ] && [ -d /workspace ]; then' \
        '  uid="$(stat -c %u /workspace)"' \
        '  gid="$(stat -c %g /workspace)"' \
        '  if [ "$uid" != "0" ]; then' \
        '    if ! getent group "$gid" >/dev/null; then groupadd --gid "$gid" hostgroup; fi' \
        '    usermod --uid "$uid" --gid "$gid" ${USERNAME} 2>/dev/null || true' \
        '    mkdir -p /home/${USERNAME}/.local/share/pnpm /workspace/.nomake_files/targets' \
        '    chown -R "$uid:$gid" /home/${USERNAME} /workspace/.nomake_files' \
        '    exec gosu "$uid:$gid" "$@"' \
        '  fi' \
        'fi' \
        'mkdir -p /workspace/.nomake_files/targets 2>/dev/null || true' \
        'exec "$@"' \
        > /usr/local/bin/tbnf-dev-entrypoint \
    && chmod +x /usr/local/bin/tbnf-dev-entrypoint

WORKDIR /workspace

ENTRYPOINT ["tbnf-dev-entrypoint"]
CMD ["bash"]
