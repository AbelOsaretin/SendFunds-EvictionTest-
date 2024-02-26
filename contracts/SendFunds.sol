// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract SendFunds {
    mapping(address => uint) Deposit;
    address payable User;

    constructor(address payable _user) payable {
        Deposit[_user] = msg.value;
        User = _user;
    }

    function DepositFunds() external payable {
        require(msg.value > 0, "Can;t create with Zero Value");
        Deposit[User] = msg.value;
    }

    function WithdrawFunds() external {
        User.transfer(Deposit[User]);
        Deposit[User] = 0;
    }
}
