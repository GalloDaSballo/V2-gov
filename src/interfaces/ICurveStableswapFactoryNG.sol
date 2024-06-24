// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ICurveStableswapFactoryNG {
    function deploy_plain_pool(
        string calldata _name,
        string calldata _symbol,
        address[] calldata _coins,
        uint256 _A,
        uint256 _fee,
        uint256 _offpeg_fee_multiplier,
        uint256 _ma_exp_time,
        uint256 _implementation_idx,
        uint8[] calldata _asset_types,
        bytes4[] calldata _method_ids,
        address[] calldata _oracles
    ) external returns (address);
}
