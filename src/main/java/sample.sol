// Przykładowy kontrakt z Solidity
pragma solidity ^0.8.0;

contract MyContract {
  string public message;
  uint public number;

  constructor(string memory _message, uint _number) {
    message = _message;
    number = _number;
  }

  function updateMessage(string memory _newMessage) public {
    message = _newMessage;
  }

  function updateNumber(uint _newNumber) public {
    number = _newNumber;
  }

  function getMessage() public view returns (string memory) {
    return message;
  }

  function getNumber() public view returns (uint) {
    return number;
  }
}
