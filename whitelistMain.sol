// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;
contract whitelist {
    
    address[] private  eligibleAddresses =[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,0x6a3348403C51778737D44Ef41b9392c744e35e55,0x102430cEF0425f5aD83C771aBA10a3E121d4Db44];
    bool public isWaitlisted;
   

    function IsWaitlisted(address userAddress)  public  returns (bool) {
        isWaitlisted = false;
       for(uint256 i = 0; i<eligibleAddresses.length; i++){
           if(userAddress == eligibleAddresses[i]){
            isWaitlisted = true;
            break ;
         }
    }
     return isWaitlisted;
}
}