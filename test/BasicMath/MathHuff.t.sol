// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {MATHSOLC} from "../../src/BasicMath/Math.sol";
import {IMATH} from "../../src/BasicMath/IMath.sol";
import {BaseTestMath} from "./BaseTestMath.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract HorseStoreHuff is BaseTestMath {
    function setUp() public override {
        s_math = IMATH(address(MATHSOLC(HuffDeployer.config().deploy("BasicMath/MathHuff"))));
    }
}
