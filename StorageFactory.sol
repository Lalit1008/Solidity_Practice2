// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.11;

import "./Storage.sol";
import "./CloneFactory.sol";
// import "@optionality/clone-factory/blob/master/contracts/CloneFactory.sol";

contract StorageFactory is CloneFactory{
    address public admin;
    address public implementation;
    address[] public clonedContracts;
    
    event ClonedContract(address _clonedContract);
    constructor(address _implementation) {
        implementation = _implementation;

    }
    // create clone of storage smart contract 


    function createStrorage() public {
        require(msg.sender == admin, 'Only admin can clone contract');
        address clone = createClone(implementation); // it return the address of the clone contract

        clonedContracts.push(clone);
    }
        function getAddress(uint i) view external returns(address) {
            return clonedContracts[i];
        }
    }