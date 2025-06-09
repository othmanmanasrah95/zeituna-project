// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

/**
 * @title ZYTToken
 * @dev ERC721 token for Zeituna tree adoption program
 */
contract ZYTToken is ERC721, ERC721URIStorage, ERC721Enumerable, Pausable, AccessControl {
    using Counters for Counters.Counter;

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    
    Counters.Counter private _tokenIdCounter;

    // Mapping from tokenId to tree metadata
    struct TreeMetadata {
        string location;
        uint256 plantedDate;
        string treeType;
    }
    mapping(uint256 => TreeMetadata) public treeMetadata;

    constructor() ERC721("Zeituna Tree Token", "ZYT") {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MINTER_ROLE, msg.sender);
        _grantRole(PAUSER_ROLE, msg.sender);
    }

    /**
     * @dev Mints a new tree NFT.
     * @param to The address that will own the NFT
     * @param uri The IPFS URI containing the NFT metadata
     * @param location The physical location of the tree
     * @param treeType The type/species of the tree
     */
    function safeMint(
        address to,
        string memory uri,
        string memory location,
        string memory treeType
    ) public onlyRole(MINTER_ROLE) {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
        
        treeMetadata[tokenId] = TreeMetadata({
            location: location,
            plantedDate: block.timestamp,
            treeType: treeType
        });
    }

    function pause() public onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    // Override required functions
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId,
        uint256 batchSize
    ) internal override(ERC721, ERC721Enumerable) whenNotPaused {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage)
        returns (string memory) {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public view override(ERC721, ERC721Enumerable, AccessControl)
        returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
