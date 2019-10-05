pragma solidity ^0.4.19;

contract TicTacToe {
    bool public mybool= false;
    address public myaddress;
    uint8 public myUint8;
    uint256 myUint256;
    string myString = "myString";
    bytes myBytes = "myString" ; 
    uint[5] public myunitarray;
    uint[3][3] board;
    
     struct mystruct{
        uint counter;
        address from;
        bool isset;
    }
    
    mystruct public somevalue;
    
    function TicTacToe() public{
        myaddress = msg.sender;
        myunitarray[0]=1;
        somevalue.counter = 5;
        somevalue.from = msg.sender;
    }
    function fundmycontact()public payable{    }
    
   
    
    function getboard() public view returns(uint[3][3]){
        return board;
    }
    
    function getmyuintarray() public view returns(uint[5]){
       
    }
    
    function increase() public {
        somevalue.counter++;
    }
    
    function withdraw()public{
        myaddress.transfer(this.balance );
    }
    
    function setmybool(bool _myboolArg)  public{
        if(msg.sender == myaddress){
        mybool = _myboolArg ;
        }
    }
        
    function getmybool() public view returns(bool){
        return mybool;
    }
    
    
    
}
