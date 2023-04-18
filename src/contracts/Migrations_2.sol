// pragma solidity ^0.8.4;
pragma solidity >=0.4.22 <0.9.0;

contract Migrations {
    // The keyword "public" makes variables
    // accessible from other contracts
    address public owner;
    mapping (address => uint) public balances;

    // Events allow clients to react to specific
    // contract changes you declare
    event Sent(address from, address to, uint amount);

    // Constructor code is only run when the contract
    // is created
    constructor() {
        owner = msg.sender;
    }

    // Sends an amount of newly created coins to an address
    // Can only be called by the contract creator
    function mint(address receiver, uint amount) public {
        require(msg.sender == owner);
        balances[receiver] += amount;
    }


    // Sends an amount of existing coins
    // from any caller to an address
    function send(address receiver, uint amount) public {
    
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}