require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0", // or the version you are using
  paths: {
    sources: "./contracts",
    tests: "./test",
    cache: "./cache",
    artifacts: "./artifacts"
  }
};