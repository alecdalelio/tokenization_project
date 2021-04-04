var MyToken = artifacts.require("MyToken");
var TokenSale = artifacts.require("TokenSale");
var myKyc = artifacts.require("KycContracts");
require("dotenv").config({ path: "../.env" });
console.log(process.env);

module.exports = async function (deployer) {
  let addr = await web3.eth.getAccounts();
  await deployer.deploy(MyToken, process.env.INITIAL_TOKENS);
  await deployer.deploy(myKyc);
  await deployer.deploy(TokenSale, 1, addr[0], MyToken.address, myKyc.address);
  let instance = await MyToken.deployed();
  await instance.transfer(TokenSale.address, process.env.INITIAL_TOKENS);
};
