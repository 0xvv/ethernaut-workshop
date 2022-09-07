// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Delegation.sol";

contract DelagationTest is Test {
    
    function setUp() public {
    }

    function testExploit() public {
        vm.createSelectFork(vm.rpcUrl("rink"));

        DelegationSolver solver = new DelegationSolver();
        solver.solve(0x6FE3b830EA43425ABfb44b059084a7d4A78803Ff);
    }
}
