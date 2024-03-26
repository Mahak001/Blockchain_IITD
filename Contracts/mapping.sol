//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDatabase {

 struct Student {
 uint256 rollNo;
 string name;
 uint256 semester;
 }

mapping(uint256 => Student) public students;
constructor() {  
    Student memory anotherStudent = Student(16, "Jyoti", 6);
    students[16] = anotherStudent;
 }
function addStudent(uint256 _rollNo, string memory _name, uint256 _semester) public {
Student memory newStudent = Student(_rollNo, _name, _semester);
students[_rollNo] = newStudent;
}
}