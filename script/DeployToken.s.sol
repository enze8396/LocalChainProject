// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {console} from "forge-std/console.sol";
import {Script} from "forge-std/Script.sol";
import {MyToken} from "../src/MyToken.sol";

contract DeployTokenScript is Script {
    function setUp() public {}

    function run() public returns (MyToken token) {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        token = new MyToken();
        vm.stopBroadcast();

        console.log("MyToken deployed to:", address(token));
    }
}
