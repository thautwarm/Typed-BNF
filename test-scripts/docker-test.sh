#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
COMPOSE_FILE="${ROOT}/compose.yaml"
SERVICE="${TBNF_COMPOSE_SERVICE:-dev}"
EXEC_USER="${TBNF_DOCKER_USER:-$(id -u):$(id -g)}"

if docker compose version >/dev/null 2>&1; then
  COMPOSE=(docker compose)
elif command -v docker-compose >/dev/null 2>&1; then
  COMPOSE=(docker-compose)
else
  echo "docker compose is required" >&2
  exit 127
fi

usage() {
  cat <<'USAGE'
Usage: test-scripts/docker-test.sh <command> [args]

Commands:
  up                 Build image if needed and start the persistent dev container
  shell              Open an interactive shell in the dev container
  exec <cmd...>      Execute an arbitrary shell command in the dev container
  build              Build the TBNF AOT executable in the dev container
  test [suite]       Run tests in the dev container (default: all)
  list               List test suites
  down               Stop and remove the compose container/network (volumes kept)
  clean              Stop container and remove compose volumes

Examples:
  test-scripts/docker-test.sh up
  test-scripts/docker-test.sh shell
  test-scripts/docker-test.sh test smoke
  test-scripts/docker-test.sh test csharp-json
  test-scripts/docker-test.sh exec 'dotnet build cli/TBNF.CLI.csproj -f net8.0'
USAGE
}

compose() {
  "${COMPOSE[@]}" -f "${COMPOSE_FILE}" "$@"
}

is_running() {
  local cid
  cid="$(compose ps -q "${SERVICE}" 2>/dev/null || true)"
  [ -n "${cid}" ] && [ "$(docker inspect -f '{{.State.Running}}' "${cid}" 2>/dev/null || true)" = "true" ]
}

start_container() {
  compose up -d --build "${SERVICE}"
}

ensure_up() {
  if ! is_running; then
    start_container
  fi
}

exec_in() {
  compose exec -T --user "${EXEC_USER}" "${SERVICE}" bash -lc "$*"
}

exec_argv() {
  compose exec -T --user "${EXEC_USER}" "${SERVICE}" "$@"
}

cmd="${1:-test}"
case "${cmd}" in
  up)
    start_container
    ;;
  shell)
    ensure_up
    compose exec --user "${EXEC_USER}" "${SERVICE}" bash
    ;;
  exec)
    shift || true
    if [ "$#" -eq 0 ]; then
      echo "missing command for exec" >&2
      usage
      exit 2
    fi
    ensure_up
    exec_in "$*"
    ;;
  build)
    start_container
    exec_in 'deno run -A build.ts aot'
    ;;
  test)
    shift || true
    if [ "$#" -eq 0 ]; then
      set -- all
    fi
    start_container
    exec_argv test-scripts/run-tests.sh "$@"
    ;;
  list)
    start_container
    exec_argv test-scripts/run-tests.sh list
    ;;
  down)
    compose down
    ;;
  clean)
    compose down -v
    ;;
  -h|--help|help)
    usage
    ;;
  *)
    echo "unknown command: ${cmd}" >&2
    usage
    exit 2
    ;;
esac
