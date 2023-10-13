// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.2;

// Write a function that will delete items (one at a time)
// from a dynamic array without leaving gaps in the array.
// You should assume that the items to be deleted are
// chosen at random, and try to do this in a gas efficient
// manner.
// For example imagine your array has 12 items and you
// need to delete the items at indexes 8, 2 and 7.
// The final array will then have items {0,1,3,4,5,6,9,10,11}


contract Hw2DeleteItem {

    uint256 [] public items;

    constructor(uint256[] memory _items) {
        items = _items;
    }

    function getItems() public view returns (uint256[] memory) {
        return items;
    }

    function deleteItemsByIndexes(uint256[] memory indexesToDelete) public {
        for (uint256 i = 0; i < indexesToDelete.length; i++) {
            deleteItemsByIndex(indexesToDelete[i]);
        }
    }

    function deleteItemsByIndex(uint256 index) public {
        for (uint256 i = index; i < items.length - 1; i++) {
            items[i] = items[i + 1];
        }
        items.pop();
    }
}