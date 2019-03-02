//스마트컨트랙트 배포를 위한 Migration System 
var Migrations = artifacts.require("./Migrations.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
