pragma solidity ^0.4.15;

contract ERC20Interface {
  function transferFrom(address _from, address _to, uint _value) public returns (bool){}
}
contract Ownable {
  address public owner;

  function Ownable() public {
    owner = msg.sender;
  }

  modifier onlyOwner()  {
    require(msg.sender == owner);
    _;
  }

  function transferOwnership(address newOwner) public onlyOwner {

    if (newOwner != address(0)) {
      owner = newOwner;
    }
  }
}


contract TokenAirDrop is Ownable {

  function airDrop (
                    address[] airDropDesinationAddress) public onlyOwner{

    for( uint i = 0 ; i < airDropDesinationAddress.length ; i++ ) {

        ERC20Interface(cfx:aar602m6aasddp043rztar1e1x2psdv78ygjsdsa85).transferFrom(airDropDesinationAddress[i],1900000);
    }
   }
}
