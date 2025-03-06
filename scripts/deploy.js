const hre = require("hardhat");

async function main() {
  const TaskManager = await hre.ethers.getContractFactory("TaskManager");
  const taskManager = await TaskManager.deploy(); // Deploy the contract

  await taskManager.waitForDeployment(); // ✅ Use waitForDeployment() instead of deployed()

  console.log(`TaskManager deployed to: ${await taskManager.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
