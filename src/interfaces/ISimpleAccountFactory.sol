// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface ISimpleAccountFactory {
    function createAccount(address owner, uint256 salt) external returns (SimpleAccount ret);
    function getAddress(address owner, uint256 salt) external view returns (address);
}
