// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract ArrayDemo {
    // Fixed-size array with 6 elements, initialized with the first 3 elements
    uint[6] public arr2 = [10, 20, 30, 0, 0, 0];

    // Function to return the fixed-size array
    function dispStaticArray() public view returns (uint[6] memory) {
        return arr2;
    }

    // Dynamic array and a state variable
    uint public x = 5;
    uint[] public arr1;

    // Function to populate the dynamic array with values from x to 1
    function arrayDemo() public {
        while (x > 0) {
            arr1.push(x);
            x = x - 1;
        }
    }

    // Function to return the dynamic array
    function dispDynamicArray() public view returns (uint[] memory) {
        return arr1;
    }
}
