// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
    import {AggregatorV3Interface} from"@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
 contract crowdfunding {
    

    uint256 minusdsend = 25;
    function fund ()public payable  {
        require(msg.value>= minusdsend, "send >= 25 usd");

    }
    function withdraw()public {

    }
    function getPrice() public   {
        // address 0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43
        //abi 
       
    }
    function getConversion()public {}
      function Getversion() external view returns (uint256){
        return AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43).version();
      }

}
