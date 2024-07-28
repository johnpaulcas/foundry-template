// SPDX-LICENSE-Identifier: MIT
pragma solidity >=0.8.24;

import {Base_Script} from "./Base.s.sol";

import {SampleToken} from "../src/SampleToken.sol";

contract DeploySampleToken is Base_Script {
    function run() public broadcast returns(SampleToken token) {
        token = new SampleToken();
    }
}