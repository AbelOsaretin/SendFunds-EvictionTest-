import { ethers } from "hardhat";

async function main() {
  const FactoryAddress = "0x87798d5f05298E4602F4D1649e8847C3fB1c3446";

  const FactoryInter = await ethers.getContractAt("Factory", FactoryAddress);

  const UserAddress = "0x2fd1AFA939eFD359a302D757740d6eC15b820bC2";

  const Amount = ethers.parseUnits("100");

  const CreateNewFundsTX = await FactoryInter.CreateNewFunds(UserAddress);

  await CreateNewFundsTX.wait();

  console.log("Hash of: ", CreateNewFundsTX.hash);

  // Transaction Hash: 0xac72e858cc5f0c0c39ba9255a5a20768ff4904e3c17494ba766f056f076aff61
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
