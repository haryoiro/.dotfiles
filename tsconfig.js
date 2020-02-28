{
  "compilerOptions": {
    /* Basic Options */
    /* 基本的な機能 */
    // "incremental": true,                 /* trueにすると差分のみをコンパイルする。 tsconfigを変えた場合などは最新の設定に準拠しないコードになる可能性があるので注*/
    "target": "es6",                        /* 出力先のファイルが準拠するECMAScriptのバージョンを指定。対応バージョンは次の通り: 'ES3' (default), 'ES5', 'ES2015', 'ES2016', 'ES2017', 'ES2018', 'ES2019', 'ES2020', or 'ESNEXT'. */
    "module": "es2015",                     /* Specify module code generation: 'none', 'commonjs', 'amd', 'system', 'umd', 'es2015', 'es2020', or 'ESNext'. */
    "lib": ["DOM", "ES2020" ],              /* Specify library files to be included in the compilation. */
    "allowJs": true,                       /* .jsファイルもトランスパイルするか*/
    "checkJs": true,                       /* .jsファイルのエラーも指摘*/
    // "jsx": "preserve",                     /* Specify JSX code generation: 'preserve', 'react-native', or 'react'. */
    // "declaration": true,                   /* Generates corresponding '.d.ts' file. */
    // "declarationMap": true,                /* Generates a sourcemap for each corresponding '.d.ts' file. */
    "sourceMap": true,                     /* ソースマップファイルを生成  */
    // "outFile": "./",                       /* コンパイル結果を一つのファイルにまとめる */
    "outDir": "./dist",                        /* トランスパイルされたファイルが出力されるディレクトリを指定 */
    "rootDir": "./src",                       /* どのディレクトリのファイルをトランスパイルするのかを指定する。--outDirで出力先を決める */
    // "composite": true,                     /* Enable project compilation */
    // "tsBuildInfoFile": "./",               /* Specify file to store incremental compilation information */
    "removeComments": true,                /* コメントが削除される。　コピーライトなどを示す/*!から始まるファイルの先頭コメントはその直下に空行が存在する限り保持される*/
    // "noEmit": true,                        /* trueにするとコンパイル結果を主流直しなくなる(tscによる型チェックのみを利用したい場合などに使用)*/
    // "importHelpers": true,                 /* Import emit helpers from 'tslib'. */
    // "downlevelIteration": true,            /* Provide full support for iterables in 'for-of', spread, and destructuring when targeting 'ES5' or 'ES3'. */
    // "isolatedModules": true,               /* Transpile each file as a separate module (similar to 'ts.transpileModule'). */

    /* Strict Type-Checking Options */
    /* 厳密な型チェック機能*/
    // "strict": true,                           /* この以下項目が全て有効になる。 */
    // "noImplicitAny": true,                 /* trueにするとAny型をエラーとして出力する。*/
    // "strictNullChecks": true,              /* Nullableな値に対してプロパティの呼び出しを行う記述をエラーにする.*/
    // "strictFunctionTypes": true,           /* Enable strict checking of function types. */
    // "strictBindCallApply": true,           /* Enable strict 'bind', 'call', and 'apply' methods on functions. */
    // "strictPropertyInitialization": true,  /* Enable strict checking of property initialization in classes. */
    // "noImplicitThis": true,                /* thisの型が暗示的にanyになる場合エラーを出力する。*/
    // "alwaysStrict": true,                  /* use strict を全てのファイルの先頭行に付与する*/

    /* Additional Checks */
    // "noUnusedLocals": true,                /* Report errors on unused locals. */
    // "noUnusedParameters": true,            /* Report errors on unused parameters. */
    // "noImplicitReturns": true,             /* Report error when not all code paths in function return a value. */
    // "noFallthroughCasesInSwitch": true,    /* Report errors for fallthrough cases in switch statement. */

    /* Module Resolution Options */
    // "moduleResolution": "node",            /* Specify module resolution strategy: 'node' (Node.js) or 'classic' (TypeScript pre-1.6). */
    // "baseUrl": "./",                       /* Base directory to resolve non-absolute module names. */
    // "paths": {},                           /* A series of entries which re-map imports to lookup locations relative to the 'baseUrl'. */
    // "rootDirs": [],                        /* List of root folders whose combined content represents the structure of the project at runtime. */
    // "typeRoots": [],                       /* List of folders to include type definitions from. */
    // "types": [],                           /* Type declaration files to be included in compilation. */
    // "allowSyntheticDefaultImports": true,  /* Allow default imports from modules with no default export. This does not affect code emit, just typechecking. */
    "esModuleInterop": true,                  /* Enables emit interoperability between CommonJS and ES Modules via creation of namespace objects for all imports. Implies 'allowSyntheticDefaultImports'. */
    // "preserveSymlinks": true,              /* Do not resolve the real path of symlinks. */
    // "allowUmdGlobalAccess": true,          /* Allow accessing UMD globals from modules. */

    /* Source Map Options */
    // "sourceRoot": "",                      /* Specify the location where debugger should locate TypeScript files instead of source locations. */
    // "mapRoot": "",                         /* Specify the location where debugger should locate map files instead of generated locations. */
    // "inlineSourceMap": true,               /* Emit a single file with source maps instead of having a separate file. */
    // "inlineSources": true,                 /* Emit the source alongside the sourcemaps within a single file; requires '--inlineSourceMap' or '--sourceMap' to be set. */

    /* Experimental Options */
    // "experimentalDecorators": true,        /* Enables experimental support for ES7 decorators. */
    // "emitDecoratorMetadata": true,         /* Enables experimental support for emitting type metadata for decorators. */

    /* Advanced Options */
    "forceConsistentCasingInFileNames": true  /* Disallow inconsistently-cased references to the same file. */
  },
  "include": ["./src/**/*"],
  "exclude": ["./node_modules"]
}
