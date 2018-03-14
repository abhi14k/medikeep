pragma solidity ^0.4.2;


contract Adoption {  

    struct Man {
        
        string hashcode;
    }
    
    mapping (address => Man) Mans;
    address[] public ManAccts;

    function saveHashcode(string _hashcode){
       
        var man = Mans[msg.sender];

        man.hashcode = _hashcode;

        ManAccts.push(msg.sender)-1;

    } 

    function getHashcode(address _address) view public returns (string) {
        return (Mans[_address].hashcode);
    }
     
}
