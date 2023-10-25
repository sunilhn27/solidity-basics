// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

contract ContactList {
    struct Contact {
        string name;
        string email;
    }

    Contact[]  contacts;

    function addContact(string memory _name, string memory _email) public {
        Contact memory newContact = Contact(_name, _email);
        contacts.push(newContact);
    }

    function getContact(uint256 index) public view returns (string memory, string memory) {
        require(index < contacts.length, "Contact index out of range");
        Contact storage contact = contacts[index];
        return (contact.name, contact.email);
    }

    function getContactCount() public view returns (uint256) {
        return contacts.length;
    }
    
}
