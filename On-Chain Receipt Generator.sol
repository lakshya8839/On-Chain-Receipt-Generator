// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReceiptIssuer {
    struct Receipt {
        address sender;
        uint256 amount;
        uint256 timestamp;
    }

    Receipt[] public receipts;

    event ReceiptIssued(address indexed sender, uint256 amount, uint256 timestamp);

    function issueReceipt() public payable {
        require(msg.value > 0, "Must send ETH");

        receipts.push(Receipt(msg.sender, msg.value, block.timestamp));

        emit ReceiptIssued(msg.sender, msg.value, block.timestamp);
    }

    function getReceipt(uint256 index) public view returns (address, uint256, uint256) {
        require(index < receipts.length, "Invalid receipt index");
        Receipt memory r = receipts[index];
        return (r.sender, r.amount, r.timestamp);
    }

    function getTotalReceipts() public view returns (uint256) {
        return receipts.length;
    }
}
