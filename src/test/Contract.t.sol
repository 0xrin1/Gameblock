// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../../src/Contract.sol";

contract ContractTest is DSTest {
    Contract c;

    function setUp() public {
        c = new Contract();
    }

    function testAddState() public {
        c.addState("some state");
        assertEq(c.states(0), "some state");
    }

    function testAddStates() public {
        c.addState("some state");
        c.addState("another state");
        assertEq(c.states(0), "some state");
        assertEq(c.states(1), "another state");
    }
}
