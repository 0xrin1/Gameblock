// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../../src/Gameblock.sol";

contract GameblockTest is DSTest {
    Gameblock gameblock;

    function setUp() public {
        gameblock = new Gameblock();
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
}
