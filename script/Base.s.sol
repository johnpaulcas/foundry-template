// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { Script } from "forge-std/Script.sol";

abstract contract Base_Script is Script {
    uint256 internal deployerPk;

    constructor() {
        deployerPk = vm.envUint("PRIVATE_KEY");
    }

    modifier broadcast() {
        vm.startBroadcast(deployerPk);
        _;
        vm.stopBroadcast();
    }
}