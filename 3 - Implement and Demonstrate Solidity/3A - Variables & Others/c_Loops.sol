// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract loopDemo {
    // Declare a dynamic array of unsigned integers
    uint[] data;

    // Function to demonstrate a for loop
    function forDemo() public returns(uint[] memory) {
        // Loop from 0 to 9
        for (uint i = 0; i < 10; i++) {
            // Push the current value of i to the data array
            data.push(i);
        }
        // Return the updated data array
        return data;
    }

    // Function to display the data array
    function disp() public view returns(uint[] memory) {
        // Return the data array
        return data;
    }
}
