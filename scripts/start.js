const fs = require('fs');
const webpack = require('webpack');
const WebpackDevServer = require('webpack-dev-server');
const paths = require('../config/paths');
const webpackConfig = require('../config/webpack.config.dev');

const DEFAULT_PORT = parseInt(process.env.PORT, 10) || 8080;
const HOST = process.env.HOST || '0.0.0.0';

const compiler = webpack(webpackConfig);
const devServer = new WebpackDevServer(compiler, {
  historyApiFallback: true,
  stats: {
    cached: false,
    children: false,
    chunks: true,
    chunkModules: false,
    modules: false,
    source: false,
    colors: true,
  },
});

// Launch WebpackDevServer.
devServer.listen(DEFAULT_PORT, HOST, err => {
  if (err) {
    return console.log(err);
  }
  console.log('Starting the development server...\n');
});

['SIGINT', 'SIGTERM'].forEach(function(sig) {
  process.on(sig, function() {
    devServer.close();
    process.exit();
  });
});
