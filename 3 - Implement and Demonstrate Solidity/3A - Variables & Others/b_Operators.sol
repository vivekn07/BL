// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 
 
contract Operators { 
     
    // Variable to store the result (currently unused)
    uint256 result = 0; 
 
    // Function to add two numbers
    function addition(uint256 a, uint256 b) public pure returns (uint256) { 
        return a + b; 
    } 
 
    // Function to subtract the second number from the first
    function subtraction(uint256 a, uint256 b) public pure returns (uint256) { 
        return a - b; 
    } 
 
    // Function to divide the first number by the second
    // Note: Ensure 'b' is not zero to avoid division by zero error
    function division(uint256 a, uint256 b) public pure returns (uint256) { 
        require(b != 0, "Division by zero is not allowed");
        return a / b; 
    } 

    // Function to multiply two numbers
    function multiply(uint256 a, uint256 b) public pure returns (uint256) { 
        return a * b; 
    } 
}
