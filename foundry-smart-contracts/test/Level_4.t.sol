pragma solidity ^0.8.2;

import {Test, console2} from "forge-std/Test.sol";
import {Level_4} from "../src/Level_4.sol";


contract Level_4Test is Test {

    Level_4 public level_4;

    function setUp() public {
        level_4 = new Level_4();
    }

    function test_solution_level_4() public {
        uint256 result = level_4.solution(10);
        assertEq(result, 8);
    }

}