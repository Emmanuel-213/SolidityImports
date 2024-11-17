// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./SimpleStorage.sol";  // Import SimpleStorage

contract StorageFactory {
    SimpleStorage[] public storageContracts;  // Array of deployed contracts

    // Deploy a new SimpleStorage contract
    function deploySimpleStorage() public {
        SimpleStorage newStorage = new SimpleStorage();
        storageContracts.push(newStorage);  // Store the instance in the array
    }

    // Store data in a deployed contract instance
    function setStorageData(uint256 index, uint256 _data) public {
        SimpleStorage storageInstance = storageContracts[index];
        storageInstance.storeNumber(_data);  // Save data in the selected instance
    }

    // Retrieve data from a deployed contract instance
    function getStorageData(uint256 index) public view returns (uint256) {
        return storageContracts[index].getFavoriteNumber();
    }
}