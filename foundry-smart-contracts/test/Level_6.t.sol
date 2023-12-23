pragma solidity ^0.8.2;

import {Test, console2} from "forge-std/Test.sol";
import {Level_6} from "../src/Level_6.sol";

contract Level_5test is Test {

    Level_6 public level_6;

    function setUp() public {
        level_6 = new Level_6();
    }

    //     function testSolutionLevel6() public {
    //     // Generate a new private key and corresponding address
    //     uint256 privateKey = uint256(keccak256("some random seed"));
    //     address signer = vm.addr(privateKey);

    //     // The message to be signed
    //     string memory message = "bidPrice(0.420)";

    //     // Hash the message
    //     bytes32 messageHash = keccak256(abi.encodePacked(message));

    //     // Sign the message off-chain using the private key
    //     (uint8 v, bytes32 r, bytes32 s) = vm.sign(privateKey, messageHash);

    //     // Call the solution function with the signature
    //     address recoveredSigner = level_6.solution(messageHash, v, r, s);

    //     // Assert that the recovered signer is the same as the original signer
    //     assertEq(recoveredSigner, signer, "Recovered signer should match the original signer");
    // }

}