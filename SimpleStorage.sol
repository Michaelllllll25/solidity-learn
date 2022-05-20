// SPDX License Identifier
// SPDX-License-Identifier: MIT


pragma solidity ^0.6.0;    // define the version

// define contract
// contract SimpleStorage {
//     // define variable (256 mean interger of size 256 bits)
//     uint256 favoriteNumber = 5;
//     bool favoriteBool = true;
//     string favoriteString = "String";
//     int256 favoriteInt = -5;
//     // Ex: an eth address
//     address favoriteAddress = 0x8382823568Df833F82;
//     // size 32 bytes
//     bytes32 favoriteBytes = "cat";
// }                   

contract SimpleStorage {
    // initialized to 0
    // public keyword defines visibility of variable or function
    uint256 favoriteNumber;

    // Sstruct - ways to define new types in solidity
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // Array- way of storing a list of an object type
    People[] public people;
    // mapping - a dictionary like data structure with 1 value per key
    mapping(string => uint256) public nameToFavoriteNumber;

    // change value of favorite number
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }    

    // view or pure.  (pure do a trype of math)
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
    // can store in memory or storage
    // memory - data will only be stored during the executiion of the function (temporary)
    // storage - data will keep for every
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}







