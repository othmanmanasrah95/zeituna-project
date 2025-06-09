const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account:", deployer.address);

  // Deploy TUTToken
  const TUTToken = await ethers.getContractFactory("TUTToken");
  const tutToken = await TUTToken.deploy();
  await tutToken.deployed();
  console.log("TUTToken deployed to:", tutToken.address);

  // Deploy ZYTToken
  const ZYTToken = await ethers.getContractFactory("ZYTToken");
  const zytToken = await ZYTToken.deploy();
  await zytToken.deployed();
  console.log("ZYTToken deployed to:", zytToken.address);

  // Verify contract addresses
  console.log("\nContract Addresses:");
  console.log("==================");
  console.log("TUTToken:", tutToken.address);
  console.log("ZYTToken:", zytToken.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
