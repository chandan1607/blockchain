//"SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

interface IERC20 {
    function transferFrom(address from,address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract Airdrop{
    constructor (){}
        function AirdropERC20(IERC20 _token, address[] calldata _to, uint[] calldata _value) public {
            require(_to.length == _value.length, "Recivers and amount are diffent");
            for(uint i=0; i< _to.length; i++)
            {
                _token.transferFrom(msg.sender, _to[i], _value[i]);
            }
        }
}
