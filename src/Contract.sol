// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

contract Contract {
    string[] public states;

    function addState(string calldata state) public {
        states.push(state);
    }
}
