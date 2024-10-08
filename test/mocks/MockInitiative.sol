// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IGovernance} from "../../src/interfaces/IGovernance.sol";
import {IInitiative} from "../../src/interfaces/IInitiative.sol";

contract MockInitiative is IInitiative {
    IGovernance public immutable governance;

    constructor(address _governance) {
        governance = IGovernance(_governance);
    }

    /// @inheritdoc IInitiative
    function onRegisterInitiative(uint16) external virtual override {
        governance.registerInitiative(address(0));
    }

    /// @inheritdoc IInitiative
    function onUnregisterInitiative(uint16) external virtual override {
        governance.unregisterInitiative(address(0));
    }

    /// @inheritdoc IInitiative
    function onAfterAllocateLQTY(uint16, address, uint88, uint88) external virtual {
        address[] memory initiatives = new address[](0);
        int176[] memory deltaLQTYVotes = new int176[](0);
        int176[] memory deltaLQTYVetos = new int176[](0);
        governance.allocateLQTY(initiatives, deltaLQTYVotes, deltaLQTYVetos);
    }

    /// @inheritdoc IInitiative
    function onClaimForInitiative(uint16, uint256) external virtual override {
        governance.claimForInitiative(address(0));
    }
}
