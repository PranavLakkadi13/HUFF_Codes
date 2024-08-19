// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { MATHSOLC } from "../../src/BasicMath/Math.sol";
import { IMATH } from "../../src/BasicMath/IMath.sol";
import { Test, console2 } from "forge-std/Test.sol";

abstract contract BaseTestMath is Test {
    IMATH public s_math;

    function setUp() public virtual {
        s_math = IMATH(address(new MATHSOLC()));
    }

    function testAdd(uint a, uint b) public {
        a = bound(a,0,1e18);
        b = bound(b,0,1e18);
        uint256 result = s_math.add(a, b);
        assertEq(result, a + b);
    }

    function testSub(uint a, uint b) public {
        a = bound(a,1e9,1e18);
        b = bound(b,0,1e8);
        uint256 result = s_math.sub(a, b);
        assertEq(result, a - b);
    }

    function testMul(uint a, uint b) public {
        a = bound(a,0,1e18);
        b = bound(b,0,1e18);
        uint256 result = s_math.mul(a, b);
        assertEq(result, a * b);
    }

    function testDiv(uint a, uint b) public {
        a = bound(a,1e9,1e18);
        b = bound(b,1,1e8);
        uint256 result = s_math.div(a, b);
        assertEq(result, a / b);
    }

    function testMod(uint a, uint b) public {
        a = bound(a,1e9,1e18);
        b = bound(b,1,1e8);
        uint256 result = s_math.mod(a, b);
        assertEq(result, a % b);
    }

    function testPow(uint a, uint b) public {
        a = bound(a,0,1e7);
        b = bound(b,0,10);
        uint256 result = s_math.pow(a, b);
        assertEq(result, a ** b);
    }

    function testSqrt(uint y) public {
        y = bound(y,1,1e18);
        uint256 result = s_math.sqrt(y);
        assert(result <= y );
    }

    function testPrime(uint n) public {
        n = bound(n,0,1e3);
        s_math.prime(n);
    }
    
}