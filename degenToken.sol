//module 4

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    constructor() ERC20("Vaibhav_Rajput", "VR") {}

        function mint(address to, uint256 value) public onlyOwner{
            _mint(to, value);
        }
        function Transfer_to(address reciever, uint value) external{
            require(balanceOf(msg.sender) >= value, "You are not owner,so can not update ");
            approve(msg.sender, value);
            transferFrom(msg.sender, reciever, value);
        }
        function Check_Balance() external view returns(uint){
           return balanceOf(msg.sender);
        }
        function Burn_Token(uint value) external{
            require(balanceOf(msg.sender)>= value, "Please add more tokens");
            _burn(msg.sender, value);
        }
        function Stored_Movies() public pure returns(string memory) {
            return "1. Inception value = 300 \n 2. Openhiemer value = 170 /n 3. Tenet value = 95";
        }
        function redeem(uint choice) external payable{
            require(choice<=3,"Invalid");
            if(choice ==1){
                require(balanceOf(msg.sender)>=300, "You need more tokens");
                approve(msg.sender, 300);
                _burn(msg.sender, 300);
            }
            else if(choice ==2){
                require(balanceOf(msg.sender)>=170, "You need more tokens");
                approve(msg.sender, 170);
                _burn(msg.sender, 170);
            }
            else{
                require(balanceOf(msg.sender)>=95, "You need more tokens");
                approve(msg.sender, 95);
                _burn(msg.sender, 95);
            }
}
}
