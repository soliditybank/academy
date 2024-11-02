pragma solidity ^0.8.4;

import "@openzeppelin/contracts/proxy/utils/UUPSProxy.sol";

contract MyContract {
    function someFunction() public pure returns (uint256) {
        return 1;
    }
}

contract SimpleUUPSPROXY is UUPSProxy(MyContract) {}
