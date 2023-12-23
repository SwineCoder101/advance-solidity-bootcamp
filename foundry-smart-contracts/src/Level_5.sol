// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

interface Isolution5 {
    function solution(int256 a, int256 b) external pure returns (int256);
}

contract Level_5 is Isolution5 {
    function solution(int256 a, int256 b) external pure override returns (int256) {
        int256 avg = (a/2) + (b/2);

        if (avg % 2 == 1) {
            avg += 1;
        }

        return avg;
    }
}