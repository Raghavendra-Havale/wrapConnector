pragma solidity ^0.7.0;

import {TokenInterface} from "../common/interfaces.sol";

abstract contract Helpers {
    TokenInterface internal constant wethContract =
        TokenInterface(0xfFf9976782d46CC05630D1f6eBAb18b2324d6B14);
}
