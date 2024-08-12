// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract LearningStrings {
    // State variable to store a string
    string public text;

    // Function to get the value of the text variable
    function getText() public view returns (string memory) {
        return text;
    }

    // Function to set the value of the text variable to "hello"
    function setText() public {
        text = "hello";
    }
    
    // Function to set the value of the text variable to a custom message
    function setTextByPassing(string memory message) public {
        text = message;
    }
}
