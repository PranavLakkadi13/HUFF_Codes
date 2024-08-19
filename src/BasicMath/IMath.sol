// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IMATH {

    function prime(uint n) external returns (bool);

    function add(uint a, uint b) external returns (uint);

    function sub(uint a, uint b) external returns (uint);
    
    function mul(uint a, uint b) external returns (uint);
    
    function div(uint a, uint b) external returns (uint);
    
    function mod(uint a, uint b) external returns (uint);
    
    function pow(uint a, uint b) external returns (uint);

    function sqrt(uint y) external returns (uint z);
    
    function ceil(int a) external returns (int);
    
    function floor(int a) external returns (int);
    
    function round(int a) external returns (int);
    
    function max(uint a, uint b) external returns (uint);
    
    function min(uint a, uint b) external returns (uint);
    
    function avg(uint a, uint b) external returns (uint);
    
    function sum(uint[] memory arr) external returns (uint);
    
    function mean(uint[] memory arr) external returns (uint);
}