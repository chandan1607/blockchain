pragma solidity ^0.5.0;

contract  ERC20Interface {
    function totalSupply() public view returns (uint);
    event Transfer(address indexed from, address indexed to, uint tokens);
}

contract ERC20 is ERC20Interface {
    string public name;
    string public symbol;
    uint public decimals;
    uint256 _totalSupply;
    mapping(address => uint256) balances;

    constructor () public {
        name ="Sccobydoop";
        symbol = "SCB";
        decimals = 18;
        _totalSupply = 100000000000000000000000000;

        balances[msg.sender] =_totalSupply;

        emit Transfer(address(0), msg.sender, _totalSupply);
    }

    function totalSupply () public view returns(uint){
        return  _totalSupply ;
    }


}
