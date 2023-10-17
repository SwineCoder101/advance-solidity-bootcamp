// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Store {

    bool flag1;
    bool flag2;
    bool flag3;
    uint8 index;
    address admin;
    address admin2;

    struct payments {
        bool valid;
        bool checked;
        uint8 paymentType;
        address sender;
        address receiver;
        uint256 amount;
        uint256 initialAmount;
        uint256 finalAmount;
    }

    payments[8] topPayments;
    uint256 public number;

    mapping (address=>uint256) balances;

    constructor(){
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}