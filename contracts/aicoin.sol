pragma solidity ^0.4.24;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Capped.sol';

contract AiCoin is ERC20, ERC20Capped {
    using SafeMath for uint;

    string public constant name = "Juan";
    string public constant symbol = "JUAN";
    uint8 public constant decimals = 18;

    uint private _totalSupply;

    mapping (address => uint256) private _balances;

    mapping (address => mapping (address => uint256)) private _allowed;

    constructor(uint totaltoken) public {
        _totalSupply = totaltoken;
        _balances[msg.sender] = totaltoken;
        emit Transfer(address(0x0), msg.sender, totaltoken);
    }

}


