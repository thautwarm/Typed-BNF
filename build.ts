import * as NM from "nomake";

const version = "0.4.0";

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

const exeCurRt = NM.Platform.currentOS == 'windows' ? './dist/TBNF.CLI.exe' : './dist/TBNF.CLI';

NM.target(
  {
    name: exeCurRt,
    virtual: false,
    deps: {
      fsSources: NM.Path.glob("core/**/*.{fs,fsproj}", { exclude: ['**/bin/**', '**/obj/**']}),
      csSources: NM.Path.glob("cli/**/*.{cs,csproj}", { exclude: ['**/bin/**', '**/obj/**']}),
    },
    async build({ deps }) {
      console.log("FSharp Sources:");
      console.log(deps.fsSources);
      console.log("CSharp Sources:");
      console.log(deps.csSources);

      const antlr4 = await NM.Shell.which("antlr4");
      if (!antlr4) {
        NM.fail("antlr4 not found in PATH, install it from https://www.antlr.org/");
      }
      const dotnet = await NM.Shell.which("dotnet");
      if (!dotnet) {
        NM.fail("dotnet not found in PATH, install it from https://dotnet.microsoft.com/");
      }

      await NM.Shell.run(
        NM.Shell.split(`antlr4 ./cli/Grammar/TypedBNF.g4 -package TypedBNF -o ./cli/Grammar/`),
        {
          printCmd: true,
          stdout: "print",
        },
      );

      await NM.Shell.run(
        NM.Shell.split(
          `dotnet publish ./cli/TBNF.CLI.csproj -f net8.0 --use-current-runtime --self-contained true -o dist/`,
        ),
        {
          printCmd: true,
          stdout: "print",
        },
      );
    },
  },
);

// .NET build tools do not allow multiple instances of the same application to run at the same time,
// i.e., .NET build tools seem not "process-safe".
class Lock {

  private _locked: boolean;

  constructor() {
    this._locked = false;
  }

  async lock() {
    while (this._locked) {
      await new Promise((resolve) => setTimeout(resolve, 100));
    }
    this._locked = true;
  }

  unlock() {
    this._locked = false;
  }

  dispose() {
    this.unlock();
  }
}

const _lock = new Lock();
const lock = async () => {
  await _lock.lock();
  return {
    [Symbol.dispose]() {
      _lock.unlock()
    }
  }
}

const binaries: string[] = [];
for (
  const rid of [
    "win-x64",
    "linux-x64",
    "osx-x64",
    "linux-arm64",
    "osx-arm64",
  ]
) {
  const suffix = rid.includes("win") ? ".exe" : "";
  const targetFileName = `tbnf-${version}-${rid}${suffix}`;
  binaries.push(`dist/${targetFileName}`);
  NM.target(
    {
      name: `dist/${targetFileName}`,
      virtual: false,
      deps: {
        bundle: exeCurRt,
      },
      async build({ target }) {
        using _ = await lock();
        await NM.Shell.run(
          NM.Shell.split(
            `dotnet publish ./cli/TBNF.CLI.csproj -f net8.0 -r ${rid} --self-contained true -o dist/${rid}`,
          ),
          {
            printCmd: true,
            stdout: "print",
          },
        );
        await new NM.Path(`dist/${rid}/TBNF.CLI${suffix}`).copyTo(
          target
        )
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

NM.target(
  {
    name: "bootstrap-once",
    virtual: true,
    rebuild: "always",
    deps: {
      executable: './dist/TBNF.CLI.exe',
    },
    async build() {
      await NM.Shell.run(
        NM.Shell.split(
          `./dist/TBNF.CLI.exe TypedBNF.tbnf -o ./cli/Grammar/ -lang TypedBNF -be csharp-antlr`
        ),
        {
          printCmd: true,
          stdout: "print",
        },
      );
    },
  },
);

const suffix = NM.Platform.currentOS == 'windows' ? '.exe' : '';
const exeAOT = `dist/TBNF.CLI.AOT${suffix}`;
NM.target(
  {
    name: exeAOT,
    virtual: false,
    deps: {
      executable: './dist/TBNF.CLI.exe',
    },
    async build() {
      await NM.Shell.run(
        NM.Shell.split(`dotnet publish ./cli.aot/TBNF.CLI.AOT.csproj -f net8.0 -o dist`),
      )
    }
  }
)

NM.target(
  {
    name: 'aot',
    virtual: true,
    rebuild: 'always',
    deps: {
      executable: exeAOT,
    }
  }
)

NM.makefile();
