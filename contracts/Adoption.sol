pragma solidity ^0.4.17;
// pragma command means: additional information that only the compiler cares about

contract Adoption {
    /**
    * Solidity is statically-typed language. Data types must be defined.
    * Solidity has a unique type called an address.
    * Addresses are Ethereum addresses, stored as 20 byte values.
    * Every account and smart contract on the Ethereum blockchain has an address and can send and receive Ether to and from this address.
    */

    /**
    * Defined a single variable: adopters.
    * It's fixed array of addresses with a length of 16.
    */
    address[16] public adopters;

    /**
    * @notice Adopting a pet
    * @dev dec types of both function params and output must be defined.
    * @param petId Integer
    * @return petId Integer
    */
    function adopt(uint petId) public returns (uint) {
        // Checking to make sure petId is in range of our adopters array.
        require(petId >= 0 && petId <= 15);

        // If ID is range, we then add the address that made the call to our adopters array
        // The address of the person or smart contract who called this function is denoted by msg.sender
        adopters[petId] = msg.sender;

        // We return the petId provided as a confirmation
        return petId;
    }

    /**
    * @notice Retrieve adopters array
    * @dev Array getter only return a single value from a given key. So the following function returns the entire array.
    * @return {array} Array of addresses with a length of 16
    */
    function getAdopters() public view returns (address[16]) {
        // Since adopters is already defined we can return it
        return adopters;
    }
}
