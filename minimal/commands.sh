
# Initialize project
pnpm dlx hardhat --init

# Add viem, … dependences via pnpm
pnpm add --save-dev @nomicfoundation/hardhat-toolbox-viem @nomicfoundation/hardhat-ignition viem

# Get coverage for tests
pnpm hardhat test solidity --coverage


# — Deploy —

# Locally
pnpm hardhat ignition deploy ignition/modules/Counter.ts

# Locally to the node
pnpm hardhat ignition deploy ignition/modules/Counter.ts --network localhost

# To Ethereum Sepolia (--reset to reset history of deployments)
pnpm hardhat ignition deploy ignition/modules/Counter.ts --network sepolia --reset


# Verify (don't do redeployment)
pnpm hardhat ignition deploy ignition/modules/Counter.ts --network sepolia --verify