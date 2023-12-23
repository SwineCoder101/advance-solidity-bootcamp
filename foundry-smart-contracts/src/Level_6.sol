// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

interface Isolution6 {
    function solution( address owner,
      bytes32 messageHash, 
      uint8 v, 
      bytes32 r, 
      bytes32 s
      ) external pure 
    returns (bool isSignedByOwner);
}

// let messageHash = ethers.utils.id("bidPrice(0.420)");
// let messageHashBytes = ethers.utils.arrayify(messageHash);
// let flatSig = await wallet.signMessage(messageHashBytes); // Sign the binary data
// let sig = ethers.utils.splitSignature(flatSig);  // sig.v sig.r sig.s etc

contract Level_6 is Isolution6 {

    function solution( address owner,
      bytes32 messageHash, 
      uint8 v, 
      bytes32 r, 
      bytes32 s
      ) external pure override 
    returns (bool isSignedByOwner) {
        return isSignedByOwner = owner == ecrecover(messageHash, v, r, s);
    }


}