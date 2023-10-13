pragma solidity ^0.8.2;

import {Test, console2} from "forge-std/Test.sol";
import {Hw2DeleteItem} from "../src/Hw2DeleteItem.sol";

contract Hw2DeleteItemTest is Test {

    Hw2DeleteItem public hw2DeleteItem;

    function setUp() public {
        uint256[] memory inputNumbers = new uint256[](6);
        for (uint i =0 ; i < 6; i++) {
            inputNumbers[i] = i;
        }
        hw2DeleteItem = new Hw2DeleteItem(inputNumbers);
    }

    function test_deleteSingleItemByIndex(uint256 x) public {
        x = bound(x, 0, hw2DeleteItem.getItems().length - 1);
        hw2DeleteItem.deleteItemsByIndex(x);
        assertEq(hw2DeleteItem.getItems().length, 5);
    }

    function test_deleteItemsByIndexes() public {
        uint256[] memory indexesToDelete = new uint256[](3);
        indexesToDelete[0] = 2;
        indexesToDelete[1] = 4;
        indexesToDelete[2] = 5;
        hw2DeleteItem.deleteItemsByIndexes(indexesToDelete);
        assertEq(hw2DeleteItem.items(0), 0);
        assertEq(hw2DeleteItem.items(1), 1);
        assertEq(hw2DeleteItem.items(2), 3);
        assertEq(hw2DeleteItem.getItems().length, 3);
    }

}