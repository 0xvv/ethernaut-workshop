// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Telephone.sol";

contract TelephoneTest is Test {
    Telephone public counter;
    function setUp() public {
    }

    function testExploit() public {
        vm.createSelectFork(vm.rpcUrl("rink"));

        TelephoneSolver tel = new TelephoneSolver();
        tel.solve(0x7bfCc9097b2D2cEbAB6c0CF22f0c9705eb9Cb929);
    }
}
