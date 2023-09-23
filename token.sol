// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SPNToken is ERC20 ("SpongyToken", "SPN"), Ownable{

      // Modifier to restrict minting to the owner
    modifier onlyOwnerCanMint() {
        require(msg.sender == owner(), "Only the owner can mint");
        _;
    }

    function mint () public onlyOwnerCanMint{
        _mint(msg.sender, 100*10**18);
    }
}
