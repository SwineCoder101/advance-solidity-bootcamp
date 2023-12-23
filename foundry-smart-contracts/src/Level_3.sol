// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

interface Isolution3 {
    function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c);
}

contract Level_3 is Isolution3 {
        
        function solution(bytes memory packed) pure external override returns (uint16 a, bool b, bytes6 c) {
            // calculate the memory offset of the first byte of the packed data
            assembly {
                a := mload(add(packed, 0x20))
                b := mload(add(packed, 0x22))
                c := mload(add(packed, 0x23))
            }
            return (a, b, c);
        }

}