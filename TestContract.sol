pragma solidity ^0.4.0;

interface Regulator {
    function checkValue(uint amount) returns (bool);
    function loan() returns (bool);
}

contract Bank is Regulator {
        uint private value;
        address private owner;

        modifier ownerFun {
            require(owner == msg.sender);
            _;
        }

        function Bank(uint amount) {
            value = amount;
            owner = msg.sender;
        }

        function deposit(uint amount) ownerFun{
            value += amount;
        }
}
