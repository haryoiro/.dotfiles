const nodeExternals = require('webpack-node-externals')
const NodemonPlugin = require('nodemon-webpack-plugin')

const clientConfig = {
  mode: "development",
  output: {
    filename: "[name].js",
    path: `${__dirname}/dist/public`
  },
  module: {
    rules: [{
      text: /\.tsx?$/,
      use: "ts-loader",
      exclude: /node_modules/,
    }]
  },
  resolve: {
    extensions: [".ts", ".tsx", ".js", ".jsx"]
  }
}

const serverConfig = {
  mode: "development",
  entry: "./src/index.ts",
  target: "node",
  /* outDirはtsconfig.jsonのものが有効になる */
  node: {
    __dirname: false,
    __firename: false
  },
  externals: [nodeExternals()],
  module: {
    rules: [{
      test: /\.ts$/,
      use: "ts-loader",
      exclude: /node_modules/,
    }]
  },
  plugins: [
    new NodemonPlugin()
  ],
  resolve: {
    extensions: [".ts", ".js"]
  }
}

module.exports = [clientConfig, serverConfig]
