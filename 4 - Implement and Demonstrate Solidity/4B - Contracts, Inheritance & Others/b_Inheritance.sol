// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;
contract Parent {
  uint256 internal sum;

  function setValue() external {
    uint256 a = 10;
    uint256 b = 20;
    sum = a + b;
  }
}

contract child is Parent {
  function getValue() external view returns (uint256) {
    return sum;
}
}

contract caller {
  child cc = new child();

  function testInheritance() public returns (uint256) {
    cc.setValue();
    return cc.getValue();
  }

  function show_value() public view returns (uint256) {
    return cc.getValue();
  }
}
