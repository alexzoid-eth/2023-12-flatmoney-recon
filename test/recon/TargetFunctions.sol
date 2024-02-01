
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {BaseTargetFunctions} from "@chimera/BaseTargetFunctions.sol";
import {BeforeAfter} from "./BeforeAfter.sol";
import {Properties} from "./Properties.sol";
import {vm} from "@chimera/Hevm.sol";

abstract contract TargetFunctions is BaseTargetFunctions, Properties, BeforeAfter {

    function delayedOrder_announceLeverageAdjust(uint256 tokenId, int256 marginAdjustment, int256 additionalSizeAdjustment, uint256 fillPrice, uint256 keeperFee) public {
      delayedOrder.announceLeverageAdjust(tokenId, marginAdjustment, additionalSizeAdjustment, fillPrice, keeperFee);
    }

    function delayedOrder_announceLeverageClose(uint256 tokenId, uint256 minFillPrice, uint256 keeperFee) public {
      delayedOrder.announceLeverageClose(tokenId, minFillPrice, keeperFee);
    }

    function delayedOrder_announceLeverageOpen(uint256 margin, uint256 additionalSize, uint256 maxFillPrice, uint256 keeperFee) public {
      delayedOrder.announceLeverageOpen(margin, additionalSize, maxFillPrice, keeperFee);
    }

    function delayedOrder_announceStableDeposit(uint256 depositAmount, uint256 minAmountOut, uint256 keeperFee) public {
      delayedOrder.announceStableDeposit(depositAmount, minAmountOut, keeperFee);
    }

    function delayedOrder_announceStableWithdraw(uint256 withdrawAmount, uint256 minAmountOut, uint256 keeperFee) public {
      delayedOrder.announceStableWithdraw(withdrawAmount, minAmountOut, keeperFee);
    }

    function delayedOrder_cancelExistingOrder(address account) public {
      delayedOrder.cancelExistingOrder(account);
    }

    function delayedOrder_executeOrder(address account, bytes[] calldata priceUpdateData) public {
      delayedOrder.executeOrder(account, priceUpdateData);
    }

    function delayedOrder_initialize(address _vault) public {
      delayedOrder.initialize(IFlatcoinVault(_vault));
    }

    function delayedOrder_setVault(address _vault) public {
      delayedOrder.setVault(IFlatcoinVault(_vault));
    }
}
