//Adoption 컨트랙트에 대한 마이그레이션
var Adoption = artifacts.require("./Adoption.sol");

module.exports = function(deployer) {
  deployer.deploy(Adoption);
};
