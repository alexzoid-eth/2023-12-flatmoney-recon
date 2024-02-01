
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {BaseSetup} from "@chimera/BaseSetup.sol";

import "src/interfaces/ILiquidationModule.sol";
import "src/FlatcoinVault.sol";
import "src/DelayedOrder.sol";
import "src/LimitOrder.sol";
import "src/interfaces/ILimitOrder.sol";
import "src/interfaces/IChainlinkAggregatorV3.sol";
import "src/libraries/FlatcoinErrors.sol";
import "src/interfaces/IStableModule.sol";
import "src/misc/Viewer.sol";
import "src/PointsModule.sol";
import "src/StableModule.sol";
import "src/misc/ERC20LockableUpgradeable.sol";
import "src/interfaces/IPointsModule.sol";
import "src/LiquidationModule.sol";
import "src/interfaces/IDelayedOrder.sol";
import "src/interfaces/IGasPriceOracle.sol";
import "src/misc/ERC721LockableEnumerableUpgradeable.sol";
import "src/libraries/DecimalMath.sol";
import "src/libraries/FlatcoinEvents.sol";
import "src/interfaces/IFlatcoinVault.sol";
import "src/interfaces/IKeeperFee.sol";
import "src/LeverageModule.sol";
import "src/OracleModule.sol";
import "src/interfaces/ILeverageModule.sol";
import "src/abstracts/ModuleUpgradeable.sol";
import "src/interfaces/IOracleModule.sol";
import "src/misc/KeeperFee.sol";

abstract contract Setup is BaseSetup {

    DelayedOrder delayedOrder;

    function setup() internal virtual override {
      delayedOrder = new DelayedOrder(); // TODO: Add parameters here
    }
}
