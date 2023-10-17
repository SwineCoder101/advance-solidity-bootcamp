// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

  interface Isolution2 {
  function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
}

contract Level_2 is Isolution2 {
    
    /function solution(uint256[10] calldata unsortedArray) external override returns (uint256[10] memory sortedArray) {
        for (uint256 i = 0; i < 10; i++) {
            sortedArray[i] = unsortedArray[i];
        }
        //bubble sort
        for (uint256 i = 0; i < 10; i++) {
            for (uint256 j = i + 1; j < 10; j++) {
                if (sortedArray[i] > sortedArray[j]) {
                    uint256 temp = sortedArray[i];
                    sortedArray[i] = sortedArray[j];
                    sortedArray[j] = temp;
                }
            }
        }
        return sortedArray;
      }
}