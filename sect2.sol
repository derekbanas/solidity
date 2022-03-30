// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

import "@openzeppelin/contracts/utils/Strings.sol";

contract Shape{
    // A constructor is used to initialize state variables
    // If there is no constructor defined a default is used
    // There is only 1 contructor and it is public or internal
    // Contracts with internal constructors make the contract abstract
    // Its code isn't stored on the blockchain
    // Only public functions and code reachable by public
    // functions is stored on the blockchain
    uint height;
    uint width;

    // Constructor
    // Remember memory is used for arrays, strings and structs
    constructor(uint _height, uint _width){
        height = _height;
        width = _width;
    }
}

// We can inherit from the Shape contract and these values
// are passed to the Shape constructor
// contract Square is Shape (10, 10){

//     // If we deploy Shape we get the Square height
//     function getHeight() public view returns(uint){
//         return height;
//     }
// }

// Lets create a constructor so we can assign dynamic values
// and have the Shape contract assign them
// ** Before deploying this you must deploy Shape and provide
// values for Height and Width
contract Square is Shape{
    constructor(uint h, uint w) Shape(h, w) {}

    // If we deploy Shape we get the Square height
    function getHeight() public view returns(uint){
        return height;
    }

    // Get Area
    function getArea() public view returns(uint){
        return height * width;
    }
}
