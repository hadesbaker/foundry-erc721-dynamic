// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MoodNft is ERC721 {
    /// STORAGE VARIABLES ///
    uint256 private s_tokenCounter;
    string private s_sadSvg;
    string private s_happySvg;

    /// CONSTRUCTOR ///
    constructor(
        string memory sadSvg,
        string memory happySvg
    ) ERC721("MoodNft", "MOOD") {
        s_tokenCounter = 0;
        s_sadSvg = sadSvg;
        s_happySvg = happySvg;
    }

    /// FUNCTIONS ///
    function mintNft() public {
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }

    function tokenURI() public view override returns (string memory) {}
}
