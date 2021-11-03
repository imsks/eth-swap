pragma solidity >=0.4.22 <0.9.0;

import "./Token.sol";

contract EthSwap {
    string public name = "EthSwap Instant Exchange";
    Token public token;
    uint256 public rate = 100;

    constructor(Token _token) public {
        token = _token;
    }
}
