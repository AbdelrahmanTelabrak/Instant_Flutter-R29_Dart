/*
Inheritance is a sharing of behaviour between two classes. It allows you to define a class that extends the functionality of another class. The extend keyword is used for inheriting from parent class.

it always create a is-a relation between the parent and child class like Student is a Person, Truck is a Vehicle, Cow is a Animal etc.

Dart supports single inheritance, which means that a class can only inherit from a single class. Dart does not support multiple inheritance which means that a class cannot inherit from multiple classes.

? Parent Class: 
The class whose properties and methods are inherited by another class is called parent class. It is also known as base class or super class.

? Child Class: 
The class that inherits the properties and methods of another class is called child class. It is also known as derived class or sub class.
*/

// Ex1
class Person {
  // Properties
  String? name;
  int? age;

  // Method
  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}
// Here In student class, we are extending the
// properties and methods of the Person class
class Student extends Person {
  // Fields
  String? schoolName;
  String? schoolAddress;

  // Method
  void displaySchoolInfo() {
    print("School Name: $schoolName");
    print("School Address: $schoolAddress");
  }
}

/*
! Types Of Inheritance In Dart
? Single Inheritance 
In this type of inheritance, a class can inherit from only one class. In Dart, we can only extend one class at a time.

? Multilevel Inheritance
In this type of inheritance, a class can inherit from another class and that class can also inherit from another class. In Dart, we can extend a class from another class which is already extended from another class.

? Hierarchical Inheritance
In this type of inheritance, parent class is inherited by multiple subclasses. For example, the Car class can be inherited by the Toyota class and Honda class.

? Multiple Inheritance 
In this type of inheritance, a class can inherit from multiple classes. Dart does not support multiple inheritance. For e.g. Class Toyota extends Car, Vehicle {} is not allowed in Dart.
*/

// ? Inheritance Of Constructor
// The constructor of the parent class is called first and then the constructor of the child class is called.
class Laptop {
  // Constructor
  Laptop() {
    print("Laptop constructor");
  }
}

class MacBook extends Laptop {
  // Constructor
  MacBook() {
    print("MacBook constructor");
  }
}

//! With parameter

class Laptop2 {
  // Constructor
  Laptop2(String name, String color) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBook2 extends Laptop2 {
  // Constructor
  MacBook2(String model, String name, String color) :super(name, color) {
    print("MacBook constructor");
  }
}

//! Extra parameter

class Laptop3 {
  // Constructor
  Laptop3(String name, String color) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBook3 extends Laptop3 {
  int year;
  // Constructor
  MacBook3(String name, String color, this.year) : super(name, color) {
    print("MacBook constructor");
  }
}

//! named parameter

class Laptop4 {
  // Constructor
  Laptop4({required String name,required String color}) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBook4 extends Laptop4 {
  // Constructor
  MacBook4({required String name,required String color}) : super(color: color, name: name) {
    print("MacBook constructor");
  }
}

//! named parameter shorthand

class Laptop5 {
  // Constructor
  Laptop5({required String name,required String color}) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBook5 extends Laptop5 {
  // Constructor
  MacBook5({required super.name,required super.color}) {
    print("MacBook constructor");
  }
}

//! Named Constructor
class Laptop6 {
  // Default Constructor
  Laptop6() {
    print("Laptop constructor");
  }

  // Named Constructor
  Laptop6.named() {
    print("Laptop named constructor");
  }

  void show() {
        print("Laptop show method");
    }
}

class MacBook6 extends Laptop6 {
  // Constructor
  MacBook6() :super.named() {
    print("MacBook constructor");
  }

  @override
  void show() {
      super.show(); // Calling the show method of the parent class
      print("MacBook show method");
  }
}

void main () {
  MacBook6 mac = MacBook6();
}





class User {
  String? username;
  int? age;

}

class Admin extends User {
  int? id;
}

class Member {
  String? username;
  int? age;
  int? rollNumber;
}
