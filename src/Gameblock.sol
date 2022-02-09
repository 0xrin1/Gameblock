// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

abstract contract Gameblock {
    string[] public states;

    function stateValidator(string calldata state) public virtual returns (bool valid) {}

    function winFunction() public virtual returns (bool won) {}

    function addState(string calldata state) public {
        if (!stateValidator(state)) {
            return;
        }

        states.push(state);
    }
}
