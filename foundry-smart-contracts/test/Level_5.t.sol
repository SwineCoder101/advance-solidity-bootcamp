pragma solidity ^0.8.2;

import {Test, console2} from "forge-std/Test.sol";
import {Level_5} from "../src/Level_5.sol";


contract Level_5test is Test {

    Level_5 public level_5;

    function setUp() public {
        level_5 = new Level_5();
    }

    function test_solution_level_5() public {
        int256 result = level_5.solution(1,2);
        assertEq(result, 2);
    }

    function test_solution_level_5_negative() public {
        int256 result = level_5.solution(-1,-2);
        assertEq(result, -1);
    }

    function test_solution_level_5_zero() public {
        int256 result = level_5.solution(-1,0);
        assertEq(result, 0);
    }

        function test_solution_level_5_zero_sum() public {
        int256 result = level_5.solution(-1,1);
        assertEq(result, 0);
    }

    function test_solution_level_5_one() public {
        int256 result = level_5.solution(1,0);
        assertEq(result, 1);
    }

}