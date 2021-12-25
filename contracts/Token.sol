//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

//Despite signaling an error, this works fine. If the path is updated to "../node_modules/hardhat/console.sol" compilation fails
import "hardhat/console.sol";

contract Token {
    string public name = "CryptoFer Token";
    string public symbol = "FER";
    uint256 public totalSupply = 1000000;
    mapping(address => uint256) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint256 amount) external {
        require(balances[msg.sender] >= amount, "Not enough tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}
