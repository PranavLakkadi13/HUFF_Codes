// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract MATHSOLC {
    
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    
    function sub(uint a, uint b) public pure returns (uint) {
        return a - b;
    }
    
    function mul(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
    
    function div(uint a, uint b) public pure returns (uint) {
        return a / b;
    }

    function mod(uint a, uint b) public pure returns (uint) {
        return a % b;
    }
    
    function prime(uint n) public pure returns (bool) {
        if (n < 2) {
            return false;
        }
        for (uint i = 2; i * i <= n; i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }

    
    function pow(uint a, uint b) public pure returns (uint) {
        return a ** b;
    }
    
    function sqrt(uint y) public pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }
    
    function avg(uint a, uint b) public pure returns (uint) {
        return (a + b) / 2;
    }
    
    function sum(uint[] memory arr) public pure returns (uint) {
        uint s = 0;
        for (uint i = 0; i < arr.length; i++) {
            s += arr[i];
        }
        return s;
    }
    
    function mean(uint[] memory arr) public pure returns (uint) {
        return sum(arr) / arr.length;
    }
}