const KryptoBird = artifacts.require('KryptoBird');
const ERC165 = artifacts.require('ERC165');

module.exports = function (deployer) {
  deployer.deploy(KryptoBird);
  deployer.deploy(ERC165);
};