// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface ISimpleAccount {
    function entryPoint() external view virtual override returns (IEntryPoint);
    function execute(address dest, uint256 value, bytes calldata func) external;
    function executeBatch(address[] calldata dest, bytes[] calldata func) external;

    function initialize(address anOwner) external;

    function getDeposit() external view returns (uint256);
    function addDeposit() external payable;
    function withdrawDepositTo(address payable withdrawAddress, uint256 amount) external;
}
