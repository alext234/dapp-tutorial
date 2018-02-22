pragma solidity ^0.4.19;

import "ds-test/test.sol";

import "./DappTutorial.sol";

contract DappTutorialTest is DSTest {
    DappTutorial tutorial;

    function setUp() public {
        tutorial = new DappTutorial();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
