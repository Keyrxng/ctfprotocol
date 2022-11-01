pragma solidity ^0.8.0;

contract Telephone {
  address public owner;
  address public thisAddr = address(this);

  constructor() {
    owner = msg.sender;
  }

  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}
