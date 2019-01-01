var AiCoin = artifacts.require("./aicoin.sol");

module.exports = function(deployer) {
  deployer.deploy(AiCoin, 100);
};