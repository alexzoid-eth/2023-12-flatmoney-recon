
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Setup} from "./Setup.sol";

abstract contract BeforeAfter is Setup {

    struct Vars {
        uint256 delayedOrder_MIN_DEPOSIT;
        bytes32 delayedOrder_MODULE_KEY;
        tuple delayedOrder_getAnnouncedOrder;
        bool delayedOrder_hasOrderExpired;
        address delayedOrder_vault;
    }

    Vars internal _before;
    Vars internal _after;

    function __before() internal {
        _before.delayedOrder_MIN_DEPOSIT = delayedOrder.MIN_DEPOSIT();
        _before.delayedOrder_MODULE_KEY = delayedOrder.MODULE_KEY();
        _before.delayedOrder_getAnnouncedOrder = delayedOrder.getAnnouncedOrder();
        _before.delayedOrder_hasOrderExpired = delayedOrder.hasOrderExpired();
        _before.delayedOrder_vault = delayedOrder.vault();
    }

    function __after() internal {
        _after.delayedOrder_MIN_DEPOSIT = delayedOrder.MIN_DEPOSIT();
        _after.delayedOrder_MODULE_KEY = delayedOrder.MODULE_KEY();
        _after.delayedOrder_getAnnouncedOrder = delayedOrder.getAnnouncedOrder();
        _after.delayedOrder_hasOrderExpired = delayedOrder.hasOrderExpired();
        _after.delayedOrder_vault = delayedOrder.vault();
    }
}
