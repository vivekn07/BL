// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract WhileDemo {
    // Declare a dynamic array to store data
    uint[] data;
    // Initialize a variable x to 0
    uint x = 0;

    // Function to demonstrate a while loop
    function whileLoopDemo() public {
        // Loop until x is less than 5
        while (x < 5) {
            // Push the value of x to the data array
            data.push(x);
            // Increment x by 1
            x = x + 1;
        }
    }

    // Function to return the data array
    function dispWhileLoop() public view returns (uint[] memory) {
        return data;
    }
}
