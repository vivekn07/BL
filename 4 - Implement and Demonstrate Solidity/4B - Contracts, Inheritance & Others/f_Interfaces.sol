// SPDX-License-Identifier: MIT 
pragma solidity >=0.8.2 <0.9.0;
interface Calculator {
  function getResult() external view returns(uint);
}
contract Test is Calculator {
    constructor() public {}
    function getResult() external view returns(uint){
        uint a = 1;
        uint b = 2;
        uint result = a + b;
            return result;
    }
}
