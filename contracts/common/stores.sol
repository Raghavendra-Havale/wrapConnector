pragma solidity ^0.7.0;

import {MemoryInterface, InstaMapping} from "./interfaces.sol";

abstract contract Stores {
    /**
     * @dev Return ethereum address
     */
    address internal constant ethAddr =
        0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /**
     * @dev Return Wrapped ETH address
     */
    address internal constant wethAddr =
        0xfFf9976782d46CC05630D1f6eBAb18b2324d6B14;

    /**
     * @dev Return memory variable address
     */
    MemoryInterface internal constant instaMemory =
        MemoryInterface(0x7fA388CC91FbC78A460bdE9F05f48A373F74D09d);

    /**
     * @dev Get Uint value from InstaMemory Contract.
     */
    function getUint(uint getId, uint val) internal returns (uint returnVal) {
        returnVal = getId == 0 ? val : instaMemory.getUint(getId);
    }

    /**
     * @dev Set Uint value in InstaMemory Contract.
     */
    function setUint(uint setId, uint val) internal virtual {
        if (setId != 0) instaMemory.setUint(setId, val);
    }
}
