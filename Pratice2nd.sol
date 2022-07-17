// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


import "@openzeppelin/contracts/token/ERC721/IERC721.sol";


 

contract ManiTransfer {

    address public _owner = msg.sender;
    
    modifier onlyOwner() {
        require(_owner == msg.sender, "Ownable: caller is not the owner");
        _;
    }


    function _transferERC721FundsToAddress(
        address toAddress,
        address tokenAddress,
        address _Operator,
        bool approved,
        uint256 tokenId
    ) public onlyOwner {
        IERC721(tokenAddress).safeTransferFrom(address(this), toAddress, tokenId);
        IERC721(tokenAddress).setApprovalForAll( _Operator, approved);

    }

  /*  
  // Mapping from owner to operator approvals
    mapping(address => mapping(address => bool)) private _operatorApprovals;

  
  function setApprovalForAll(address operator, bool approved) public virtual override {
        _setApprovalForAll(_msgSender(), operator, approved);
    }

     function _setApprovalForAll(
        address owner,
        address operator,
        bool approved
    ) internal virtual {
        require(owner != operator, "ERC721: approve to caller");
        _operatorApprovals[owner][operator] = approved;
        emit ApprovalForAll(owner, operator, approved);
    } */

}