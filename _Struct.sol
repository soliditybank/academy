//SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

contract Struct_Test {

    struct User {
        uint8 age;
        string name;       
    }

    User [] users;

    function addUser(string memory _name, uint8 _age) public returns (uint) {
        users.push(User({age: _age,name: _name}));  
        return users.length -1;  
    }

    function getUserAge(uint i) public view returns (uint8) {
        return users[i].age;
    }

    function getUserName(uint i) public view returns (string memory) {
        return users[i].name;
    }

}
