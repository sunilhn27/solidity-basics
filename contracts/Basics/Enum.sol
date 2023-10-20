// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract EnumExample {
    // Define an enum named 'Status' with three constant values
    enum Status {
        Pending,
        Approved,
        Rejected
    }

    // Declare a state variable of type 'Status'
    Status public currentStatus;

    // Constructor to initialize the 'currentStatus'
    constructor() {
        currentStatus = Status.Pending;
    }

    // Function to change the 'currentStatus'
    function changeStatus(Status newStatus) public {
        currentStatus = newStatus;
    }


   //funciton to reset Status
   function resetSatatus() public{
     delete currentStatus;
   }

}
