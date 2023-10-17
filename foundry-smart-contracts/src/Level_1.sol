// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

interface Isolution1 {
    function solution(
        uint256[2][3] calldata x, 
        uint256[2][3] calldata y
    ) external pure returns (
        uint256[2][3] memory
    );
}

contract Level_1 is Isolution1 {

    function solution(
        uint256[2][3] calldata x, 
        uint256[2][3] calldata y
    ) external pure override returns (
        uint256[2][3] memory
    ) {
        uint256[2][3] memory z;
        for (uint256 i = 0; i < 3; i++) {
            for (uint256 j = 0; j < 2; j++) {
                z[i][j] = x[i][j] + y[i][j];
            }
        }
        return z;
    }
}