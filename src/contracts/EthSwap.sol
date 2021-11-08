pragma solidity >=0.4.22 <0.9.0;

import "./Token.sol";

contract EthSwap {
    string public name = "EthSwap Instant Exchange";
    Token public token;
    uint256 public rate = 100;

    constructor(Token _token) public {
        token = _token;
    }

    event TokensPurchased(
        address account,
        address token,
        uint256 amount,
        uint256 rate
    );

    function buyTokens() public payable {
        uint256 tokenAmount = msg.value * rate;
        token.transfer(msg.sender, tokenAmount);

        require(token.balanceOf(address(this)) >= tokenAmount);

        emit TokensPurchased(msg.sender, address(token), tokenAmount, rate);
    }
}
