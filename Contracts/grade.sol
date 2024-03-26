// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract percent {
   uint per;
   function getPercent(uint hindi,uint maths , uint english , uint science) public returns(uint){
      per=(hindi+english+maths+science)/4;
      return per;
      }
}

contract grade is percent {
    function getGrade() public view   returns(string memory){
        
      if(per>=75){
       return "your grade is A";
       }
       else if(per>=50 && per<75){
         return "your grade is B";
         }
         else if(per>=25 && per<50){
            return "your grade is C";
            }
            else {
               return "your grade is D";
               }
               }
}