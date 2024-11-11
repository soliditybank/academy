// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);
  function description() external view returns (string memory);
  function version() external view returns (uint256);
  function getRoundData(uint80 _roundId) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
  function latestRoundData() external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract DataConsumerV3 {
    AggregatorV3Interface internal dataFeed;

    /**
     * Network: Sepolia
		 *
     * Aggregator: ETH/USD
     * Address: 0x694AA1769357215DE4FAC081bf1f309aDC325306
		 * 
		 * Aggregator: EUR/USD
		 * Address: 0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910
		 *
		 * Aggregator: USDC/USD
		 * Address: 0xA2F78ab2355fe2f984D808B5CeE7FD0A93D5270E
		 *
		 * Aggregator: BTC/ETH
		 * Address: 0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22
		 *
		 * Aggregator: BTC/USD
		 * Address: 0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43
     */
    constructor() {
			dataFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    }

    /**
     * Returns the latest answer.
     */
    function getChainlinkDataFeedLatestAnswer() public view returns (uint80,int256,uint256,uint256,uint80) {
			(uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound) = dataFeed.latestRoundData();
			return (roundId, answer, startedAt, updatedAt, answeredInRound);
    }
}
