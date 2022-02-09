// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../../src/Gameblock.sol";

contract GameblockImplementation is Gameblock {
    function stateValidator(string calldata state) public override returns (bool won) {
        return true;
    }

    function winFunction() public override returns (bool won) {
        return true;
    }
}

contract GameblockTest is DSTest {
    GameblockImplementation gameblock;

    function setUp() public {
        gameblock = new GameblockImplementation();
    }

    function testAddState() public {
        gameblock.addState("some state");
        assertEq(gameblock.states(0), "some state");
    }

    function testAddStates() public {
        gameblock.addState("some state");
        gameblock.addState("another state");
        assertEq(gameblock.states(0), "some state");
        assertEq(gameblock.states(1), "another state");
    }

    function setWinFunction() public {
        assert(gameblock.winFunction());
    }
}
