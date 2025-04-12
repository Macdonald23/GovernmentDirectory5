async function main() {
  // Get the deployer's address
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account:", deployer.address);

  // Get the contract factory
  const GovernmentDirectory5 = await ethers.getContractFactory("GovernmentDirectory5");

  // Deploy the contract
  const gov = await GovernmentDirectory5.deploy();
  console.log("GovernmentDirectory5 contract deployed to:", gov.address);

  // No need to call .deployed() here
  // You can use gov directly now
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
      console.error(error);
      process.exit(1);
  });
