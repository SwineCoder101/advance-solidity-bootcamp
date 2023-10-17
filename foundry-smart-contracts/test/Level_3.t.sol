pragma solidity ^0.8.2;

import {Test, console2} from "forge-std/Test.sol";
import {Level_3} from "../src/Level_3.sol";


contract Level_3Test is Test {

    Level_3 public level_3;

    function setUp() public {
        level_3 = new Level_3();
    }

    function test_solution_level_3() public {
        bytes memory packed = abi.encodePacked(uint16(1), bool(true), bytes6(hex"000001"));
        (uint16 a, bool b, bytes6 c) = level_3.solution(packed);
        assertEq(a, 1);
        assertEq(b, true);
        assertEq(c, hex"000001");
    }

}