pragma solidity ^0.4.2;

contract DuffyToken {
		string public name = 'Duffy';
		string public symbol = 'DUFFS';
		string public standard = 'Duffy Token v1.0';
		uint256 public totalSupply;

		event Transfer(
			address indexed _from,
			address indexed _to,
			uint256 _value
		);

		mapping(address => uint256) public balanceOf;

		function DuffyToken(uint _initial_supply) public {
				balanceOf[msg.sender] = _initial_supply;
				totalSupply = _initial_supply;
		}

		function transfer(address _to, uint256 _value) public returns (bool success) {
			require(balanceOf[msg.sender] >= _value);

			balanceOf[msg.sender] -= _value;
			balanceOf[_to] += _value;

			Transfer(msg.sender, _to, _value);

			return true;
		}
}