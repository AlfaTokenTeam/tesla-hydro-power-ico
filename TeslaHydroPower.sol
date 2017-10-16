pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TeslaHydroPower is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TeslaHydroPower(address _owner)  UpgradeableToken(_owner) {
    name = "TeslaHydroPower";
    symbol = "THP";
    totalSupply = 1000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}