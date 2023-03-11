// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/Counter.sol";
import "forge-std/console.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter(10);
    }

    function testIncrement() public {
        counter.incrementCounter();
        uint value = counter.getCount();
        assertEq(value, 11);
        emit log_named_uint("the value is", value);
    }

     function testDecrement() public {
        counter.decrementCounter();
        uint value = counter.getCount();
        assertEq(value, 9);
        emit log_named_uint("the value is", value);
    }

}
