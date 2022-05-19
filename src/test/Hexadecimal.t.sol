// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.13;
import "forge-std/Test.sol";
import {Hexadecimal} from "../Hexadecimal.sol";

contract HexadecimalTest is Test {
  using Hexadecimal for uint;
  using Hexadecimal for address;

  function testVagueOutputLength (uint i) public {
    assertLt(i.hexadecimal().length, 67);
  }

  function testOutputLength (address a) public {
    assertEq(a.hexadecimal().length, 42);
  }
}
