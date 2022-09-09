// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Force.sol";

contract ForceTest is Test {
    function setUp() public {

    }

    function testSolve() public {
        ForceSolver solver = new ForceSolver();
        payable(address(solver)).send(1);
        solver.solve(payable(0x06E9c04EA0079f30DF55908745F6Ee7637fEE42b));
    }

}
