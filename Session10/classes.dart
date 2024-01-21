/***************
 * The class is a blueprint for creating objects.
 * 
 * The class is declared using the class keyword.
 * 
 * The class body consists of variables and functions.
 * 
 * The variables are also known as properties, fields, attributes, or data members.
 * 
 * The functions are also known as methods, behaviors, or member functions.
 * 
 * camelCase
 * PascalCase
 * snake_case
 * cebab-case
***************/


// Animal Class
class Animal {
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void displayInfo() {
    print("Animal name: $name.");
    print("Number of Legs: $numberOfLegs.");
    print("Life Span: $lifeSpan.");
  }
}

// Person Class
class Person {
  String? name;
  String? phone;
  bool? isMarried;
  int? age;

  void displayInfo() {
    print("Person name: $name.");
    print("Phone number: $phone.");
    print("Married: $isMarried.");
    print("Age: $age.");
  }
}

// Area Class
class Area {
  double? length;
  double? breadth;

  double calculateArea() {
    return length! * breadth!;
  }
}

// Task Create 2 classes:
/* 
  * Student Class
    - properties: name, age, grade
    - method: displayInfo
  * Book Class
    - properties: name, author, pages
    - method: displayInfo
*/

class Student{
  String? name;
  int? age;
  int? grade;

  void displayInfo(){
    print('name: $name,\nage: $age,\ngrade: $grade');
  }
}

class Book{
  String? name;
  String? author;
  int? pages;

  void displayInfo(){
    print('name: $name,\nauthor: $author,\npages: $pages;');
  }
}