// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

/// @author admin.soliditybank.eth
/// @title Loop For, While

contract Contract_4_Loop {

    uint public counter = 0;

    function loop_For() public {
        for (uint i=0; i<10; i++) {
            counter++;
        }
    }

    function loop_While() public {
        while (counter < 20) {
            counter++;
        }
    }

}
