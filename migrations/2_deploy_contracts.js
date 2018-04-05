var DuffyToken = artifacts.require("./DuffyToken.sol");

module.exports = function(deployer) {
  deployer.deploy(DuffyToken, 1000000);
};