import * as NM from "nomake";
import version from "./version.ts";

const GlobalOptions: {
  bootstrap: boolean;
} = {
  bootstrap: false,
};

NM.option(
  "BOOTSTRAP",
  {
    callback: ({ value }) => {
      value = value.toLowerCase().trim();
      GlobalOptions.bootstrap = Boolean(value) &&
        !["false", "0"].includes(value);
    },
  },
);

const sedlex = NM.target(
  {
    name: "src/FableSedlex",
    virtual: false,
    deps: {
      repo: NM.repoTarget(
        {
          repo: "thautwarm/Fable.Sedlex",
        },
      ),
    },
    rebuild: "never",
    async build({ deps, target }) {
      console.log("FableSedlex Repo Path:", deps.repo);
      await new NM.Path(deps.repo).copyTo(target, {
        contentsOnly: true,
      });
    },
  },
);

NM.target(
  {
    name: "./dist/tbnf.js",
    virtual: false,
    deps: {
      sedlex: sedlex,
      fsSources: NM.Path.glob(
        "src/**/*.{fs,fsproj}",
        {
          exclude: [
            "**/FableSedlex/**",
          ],
        },
      ),
      tsSources: NM.Path.glob("tbnf-js/src/*.ts"),
    },
    async build({ deps, target }) {
      console.log("FSharp Sources:");
      console.log(deps.fsSources);

      console.log("TS Sources:");
      console.log(deps.tsSources);

      const antlr = await NM.Shell.which("antlr-ng");
      if (!antlr) {
        NM.fail(
          "antlr-ng not found in PATH, install it from https://github.com/mike-lischke/antlr-ng",
        );
      }

      const fable = await NM.Shell.which("fable");
      if (!fable) {
        NM.fail(
          "fable not found in PATH, install it from https://github.com/thautwarm/Fable",
        );
      }

      const bun = await NM.Shell.which("bun");
      if (!bun) {
        NM.fail("bun not found in PATH, install it from https://bun.sh");
      }

      await NM.Shell.run(
        [
          antlr,
          "-Dlanguage=TypeScript",
          "./tbnf-js/src/TypedBNF.g4",
          "-o",
          "./tbnf-js/src",
        ],
        {
          printCmd: true,
          stdout: "print",
        },
      );

      await NM.Shell.run(
        NM.Shell.split(
          `fable --typedArrays false --outDir ./tbnf-js/src --noCache`,
        ),
        {
          printCmd: true,
          stdout: "print",
        },
      );

      await NM.Shell.run(
        NM.Shell.split(
          `bun install`,
        ),
        {
          printCmd: true,
          stdout: "print",
          cwd: "./tbnf-js",
        },
      );

      await NM.Shell.run(
        NM.Shell.split(
          `bun build --target=node --outfile ../dist/tbnf.js ./src/entrypoint.ts`,
        ),
        {
          printCmd: true,
          stdout: "print",
          cwd: "./tbnf-js",
        },
      );
    },
  },
);

const binaries: string[] = [];
let targetInCurrentOS = "";
for (
  const triple of [
    "x86_64-unknown-linux-gnu",
    "aarch64-unknown-linux-gnu",
    "x86_64-pc-windows-msvc",
    "x86_64-apple-darwin",
    "aarch64-apple-darwin",
  ]
) {
  const suffix = triple.includes("windows") ? ".exe" : "";
  const targetFileName = `tbnf-${version}-${triple}${suffix}`;
  binaries.push(`dist/${targetFileName}`);
  if (Deno.build.target == triple) {
    targetInCurrentOS = `dist/${targetFileName}`;
  }
  NM.target(
    {
      name: `dist/${targetFileName}`,
      virtual: false,
      deps: {
        bundle: "./dist/tbnf.js",
      },
      async build({ deps, target }) {
        const deno = await NM.Shell.which("deno");
        if (!deno) {
          NM.fail("deno not found in PATH, install it from https://deno.land");
        }

        await NM.Shell.run(
          NM.Shell.split(
            `deno compile --allow-env --allow-sys --allow-read --allow-run --allow-write --allow-import --target ${triple} --output ${target} ${deps.bundle}`,
          ),
          {
            printCmd: true,
            stdout: "print",
          },
        );
      },
    },
  );
}

NM.target({
  name: "build",
  virtual: true,
  rebuild: "always",
  deps: {
    binaries: binaries,
  },
});

NM.target({
  name: "clean",
  virtual: true,
  rebuild: "always",
  async build() {
    for await (
      const each of NM.Path.glob("tbnf-js/src/**/*.js", {
        exclude: ["**/tbnf.config.js"],
      })
    ) {
      console.log("Removing ", each);
      await Deno.remove(each);
    }

    console.log("Removing tbnf-js/src/fable_modules");
    await await Deno.remove(
      new NM.Path("tbnf-js/src/fable_modules").abs().asOsPath(),
      {
        recursive: true,
      },
    );
  },
});

if (targetInCurrentOS) {
  NM.target(
    {
      name: "bootstrap-once",
      virtual: true,
      rebuild: "always",
      deps: {
        executable: targetInCurrentOS,
      },
      async build({ deps }) {
        
        await NM.Shell.run(
          NM.Shell.split(
            `${deps.executable} TypedBNF.tbnf -o ./tbnf-js/src -lang TypedBNF -be typescript-antlr`
          ),
          {
            printCmd: true,
            stdout: "print",
          },
        );
      },
    },
  );
}

NM.makefile();
