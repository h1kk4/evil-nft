//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EvilToken is ERC20, Ownable {
    
    constructor() ERC20("hack", "HACK") {
        address victim = 0x321639C6572dE66253DeC41a959cD00137f1D476;
          _mint(victim, 10 ether);
    }   
}
