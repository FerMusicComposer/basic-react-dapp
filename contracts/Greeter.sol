//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

//Despite signaling an error, this works fine. If the path is updated to "../node_modules/hardhat/console.sol" compilation fails
import "hardhat/console.sol";

contract Greeter {
    string private greeting;

    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
