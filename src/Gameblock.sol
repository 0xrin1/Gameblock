// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

abstract contract Gameblock {
    string[] public states;

    function winFunction() public virtual returns (bool won) {}

    function addState(string calldata state) public {
        states.push(state);
    }
}
