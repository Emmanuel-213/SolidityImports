**Factory Pattern, Inheritance and Resolving Inheritance Conflicts**

This project was based on key concepts like imports, the factory pattern, and inheritance.

**Setting Up Your Development Environment**
To begin the project, I opened Remix IDE in my browser and created a new workspace which I named "SolidityImports" for this project.
I ensured MetaMask was connected to the Arbitrum Sepolia Testnet.

**Implementing Solidity Imports and the Factory Pattern**

For the purpose of the imports, I created two files namely; SimpleStorage.sol and StorageFactory.sol.
The SimpleStorage contract stores a single number called(favoriteNumber). The StorageFactory contract creates new instances of SimpleStorage and stores them in an array.
I used the import keyword to make sure that the SimpleStorage contract is available within the StorageFactory.
I opened the Solidity Compiler tab and checked to ensure that the version was 0.8.25 or above, and I compiled both contracts. In the Deploy & Run Transactions tab, 
I selected Injected Web3 (MetaMask) as the environment and I deployed the StorageFactory contract.

**Implementing Inheritance in Contracts**

I created another file and named it AdvancedStorage.sol. The AdvancedStorage contract inherits all functionality from the SimpleStorage contract 
using the "is" keyword (contract AdvancedStorage is SimpleStorage). I added "virtual" to the storenumber function in SimpleStorage and added "override" to the storenumber in AdvancedStorage.
I added a timestamp to record when the numbers were recorded.
I compiled and deployed AdvancedStorage.sol.

**Resolve Inheritance Conflicts**
I created three contracts, A, B, and C. Contract C inherits from both A and B. I created a greet function for all contracts. 
Contract C overrides the greet() function and calls both parent functions to combine their outputs. I compiled and deployed the C contract in Remix.

**Compile, Test, and Deploy on Arbitrum Sepolia**
I used the Solidity Compiler in Remix to compile all the contracts to ensure there are no errors. I selected "Injected Web3 (MetaMask)" as the environment in Remix and deployed
the StorageFactory and AdvancedStorage contracts again.
