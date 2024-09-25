//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Callee {
    uint public x;

    function setX(uint y) external {
        x = y;
    }
}

contract Caller {

    Callee c = Callee(0xddaAd340b0f1Ef65169Ae5E41A8b10776a75482d);

    function foo(uint z) public {
        c.setX(z);
    }

}
