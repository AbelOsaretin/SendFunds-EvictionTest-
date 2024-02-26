// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;
import "./SendFunds.sol";

contract Factory {
    SendFunds[] SendFundsArray;

    function CreateNewFunds(address payable newUser) external payable {
        SendFunds newFund = new SendFunds(newUser);

        SendFundsArray.push(newFund);
    }
}
