// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1400/ERC1400.sol";

contract MyToken is ERC1400 {
    constructor(
        string memory name,
        string memory symbol,
        address[] memory controllers,
        address certificateSigner,
        bool certificateActivated,
        bytes32[] memory defaultPartitions
    )
        ERC1400(name, symbol)
    {
        _initialize(name, symbol, 100, controllers, certificateSigner, certificateActivated, defaultPartitions);
    }
}