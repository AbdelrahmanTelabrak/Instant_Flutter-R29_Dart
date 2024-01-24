/*
In most programming languages like java, c++, c#, etc., we can create multiple constructors with the same name (Overloading). But in Dart, this is not possible. Well, there is a way. We can create multiple constructors with the same name using named constructors.
*/

// Ex1 
import 'dart:convert';

class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Default Constructor
  Student() {
    print("This is a default constructor");
  }

  // Named Constructor
  Student.init(this.name, this.age, this.rollNumber);
}

// Ex2
class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  Person.fromMap(Map<String, dynamic> persons) {
    name = persons['name'];
    age = persons['age'];
  }

  Person.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    name = json['name'];
    age = json['age'];
  }
}


class EdgeInsets {
  double left = 0;
  double right = 0;
  double top = 0;
  double bottom = 0;

  EdgeInsets.all(double val) {
    left = val;
    right = val;
    top = val;
    bottom = val;
  }

  EdgeInsets.fromrltb({this.bottom = 0, this.left = 0, this.right = 0, this.top = 0});
  EdgeInsets.only({bottom = 0, left = 0, right = 0, top = 0}){
    
  }
}


void main() {
  // Here student is object of class Student.
  Student student = Student.init("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}