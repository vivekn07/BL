// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// Define a contract named Variable
contract Variable {
    // State variable to store data
    uint storedData;

    // Constructor to initialize the storedData variable
    constructor() {
        storedData = 40;
    }

    // Function to retrieve the stored data
    function getResult() public view returns (uint) {
        return storedData;
    }
}
