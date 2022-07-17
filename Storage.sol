// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Storage{
    string public data;
    
    function setData(string calldata _data) external{
        data = _data;
    }
}