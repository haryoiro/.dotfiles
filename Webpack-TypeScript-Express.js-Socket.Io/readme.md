# Setup Express.js and socket.IO projects using Typescript with Webpack

## tsconfig.json
/* 
* 全てのオプションが日本語訳されたサイトを見つけたのでここを参照する
* http://js.studio-kingdom.com/typescript/project_configuration/compiler_options
*/
  - target import/export構文を使用するため、es6以上のバージョンを設定
  - module 上に同じ
  - lib dom操作を含むためDOMライブラリを指定
  - outDir 全てを同じファイルにトランスパイルするため一箇所を指定今回は`./dist`
  - rootDir 上に同じ
## webpack.config.js
  - 
