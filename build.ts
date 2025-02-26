import * as NM from "nomake";

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
        name: 'src/FableSedlex',
        virtual: false,
        deps: {
            repo: NM.repoTarget(
                {
                  repo: "thautwarm/Fable.Sedlex",
                })
        },
        rebuild: 'never',
        async build({ deps, target }) {
            console.log("FableSedlex Repo Path:", deps.repo);
            await new NM.Path(deps.repo).copyTo(target, {
                contentsOnly: true,
            });
        }

    }
)


NM.target(
  {
    name: "tbnf-js/deno_pack/bundle.js",
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
    async build({ deps }) {
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
          `bun build --target=node --outfile ../deno_pack/bundle.js ./src/entrypoint.ts`,
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

NM.target(
    {
        name: 'dist/tbnf.js',
        virtual: false,
        deps: {
            bundle: './deno_pack/bundle.js'
        },
        async build({ deps, target }) {
            await new NM.Path(deps.bundle).copyTo(target);
        }
    }
)

// for (const triple of [
//     ''
// ])

NM.makefile()