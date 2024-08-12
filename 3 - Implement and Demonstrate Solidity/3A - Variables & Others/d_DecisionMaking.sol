// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// Define the contract
contract IfElseDemo {
    // Declare a state variable
    uint i = 10;

    // Define a function to make a decision based on the value of 'i'
    function decisionMaking() public view returns (string memory) {
        // Check if 'i' is even
        if (i % 2 == 0) {
            return "even";
        } else {
            return "odd";
        }
    }
}
