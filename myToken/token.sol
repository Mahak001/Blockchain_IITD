// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract JyotiT is ERC20, ERC20Permit {
    constructor() ERC20("JyotiT", "JTJR") ERC20Permit("JyotiT") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }
}
//0xa9Ac43C6b26285e7384A2CCEDCc9830bf961694b