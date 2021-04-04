const path = require("path");
module.exports = {
  networks: {
    development: {
      port: 7545,
      host: "127.0.0.1",
      network_id: 5777,
    },
  },
  compilers: {
    solc: {
      version: "^0.6.0",
      parser: "solcjs",
      settings: {
        optimizer: {
          enabled: true,
        },
        evmVersion: "istanbul",
      },
    },
  },
};
