pragma solidity ^0.4.2;


contract Adoption {  

    struct Man {
        
     
        string hashcode;
        string id; 
        
    }
    
    mapping (address => Man) public Mans;
    address[] public ManAccts;
    //uint public count = 3;

    function saveHashcode(address _address, string _hashcode, string _id) public {
       
        var man = Mans[_address];

        man.hashcode = _hashcode;
        man.id = _id;

        ManAccts.push(_address)-1;

    } 


    function getHashcode(address _address) view public returns (string) {
        return (Mans[_address].hashcode);
    }
     
}
