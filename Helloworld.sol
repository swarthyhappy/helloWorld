// SPDX-license-Identifier: MIT
pragma solidity ^0.8.10;

contract Helloworld {
    string public blockGames;
    string public tag = "Play ";

    constructor(string memory gameType) {
        blockGames = gameType;
    }

    function createGame(string memory newGame) public {
        blockGames = newGame;
    }    

    function playGame() public view returns (string memory) {
        return string(abi.encodePacked(tag, blockGames));
    }    
}
