//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7; //above 0.8.7
//pragma solidity 0.8.7; //just 0.8.7
//pragma solidity >=0.8.7<0.9.0; //between

contract SimpleStorage {
    uint256   favouriteNumber;
    //People public person = People({favouriteNumber:2, name:"Aby"});

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    //uint256[] public favouriteNumber;
    People[] public people;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
        //favouriteNumber = favouriteNumber+1;
    }
    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }
    //0xd9145CCE52D386f254917e481eB44e9943F39138 - address of this

    function addPerson(string memory _name, uint256 _favouriteNumber) public{
        people.push(People(_favouriteNumber, _name));
    }
}
