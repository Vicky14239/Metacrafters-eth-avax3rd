// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract CustomToken is ERC20, Pausable {

    address private _admin;

    constructor() ERC20("CUSTOM", "CST") {
        _admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == _admin, "This function can only be called by the contract admin!");
        _;
    }

    function createTokens(address recipient, uint256 quantity) public onlyAdmin {
        _mint(recipient, quantity);
    }

    function destroyTokens(uint256 quantity) public {
        _burn(msg.sender, quantity);
    }

    function transfer(address recipient, uint256 quantity) public override whenNotPaused returns (bool) {
        require(quantity <= balanceOf(msg.sender), "Insufficient balance to transfer!");
        _transfer(msg.sender, recipient, quantity);
        return true;
    }

    function pauseTransfers() public onlyAdmin {
        _pause();
    }

    // Function to unpause all token transfers
    function unpauseTransfers() public onlyAdmin {
        _unpause();
    }
}
