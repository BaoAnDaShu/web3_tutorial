// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ValueTypes{
    
    bool public _bool = true;

    bool public _bool1 = !_bool;
    bool public _bool2 = _bool && _bool1;
    bool public _bool3 = _bool || _bool1;
    bool public _bool4 = _bool == _bool1;
    bool public _bool5 = _bool != _bool1;

    int public _int = -1;
    uint public _uint = 1;
    uint256 public _number = 20250217;

    address public _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable  public _address1 = payable(_address);
    uint256 public balance = _address1.balance;

    bytes32 public _byte32 = "MiniSolidity";
    bytes1 public _byte = _byte32[0];

    enum ActionSet { Buy, Hold, Sell }
    ActionSet action = ActionSet.Buy;

    function enumToUint() external view returns(uint){
        return uint(action);
    }

}