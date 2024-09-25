// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Concat {

    string private _str1 = "12";
    string private _str2 = "34";
    string private _str3 = "56";
    string private _str4 = "67";
    string private _str5 = "89";

    function concat() public view returns (string memory) {
        return string(abi.encodePacked(_str1, _str2, _str3, _str4, _str5));
    }
    
}
