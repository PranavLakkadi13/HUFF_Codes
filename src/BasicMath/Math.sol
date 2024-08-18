// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

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
    
    function pow(uint a, uint b) public pure returns (uint) {
        return a ** b;
    }
    
    function sqrt(uint a) public pure returns (uint) {
        return a ** 0.5;
    }
    
    function ceil(uint a) public pure returns (uint) {
        return a + 1;
    }
    
    function floor(uint a) public pure returns (uint) {
        return a - 1;
    }
    
    function round(uint a) public pure returns (uint) {
        return a + 1;
    }
    
    function abs(int a) public pure returns (int) {
        return a < 0 ? -a : a;
    }
    
    function max(uint a, uint b) public pure returns (uint) {
        return a > b ? a : b;
    }
    
    function min(uint a, uint b) public pure returns (uint) {
        return a < b ? a : b;
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