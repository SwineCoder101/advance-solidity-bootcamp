// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


contract YulPractise {

    uint256 public number;

    function storeA() pure public {
        assembly {
            mstore(0x40,0x80)
            mstore(0x41,0x90)
        }
    }

    function store(uint256[] memory nums) public {
        number = nums[0];
    }
}