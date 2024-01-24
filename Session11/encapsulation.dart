/*
In Dart, Encapsulation means hiding data within a library, preventing it from outside factors. It helps you control your program and prevent it from becoming too complicated.

! What Is Library In Dart?
? By default, every .dart file is a library. A library is a collection of functions and classes. A library can be imported into another library using the import keyword.

! Encapsulation can be achieved by:
? Declaring the class properties as private by using underscore(_).
? Providing public getter and setter methods to access and update the value of private property.
*/

class Employee {
  // Private properties
  int? _id;
  String? _name;

// Getter method to access private property _id
  int getId() {
    return _id!;
  }
// Getter method to access private property _name
  String getName() {
    return _name!;
  }
// Setter method to update private property _id
  void setId(int id) {
    if(true) {
      this._id = id;
    }
    this._id = 0;
  }
// Setter method to update private property _name
  void setName(String name) {
    this._name = name;
  }
  
}

// Using Getter And Setter
class Employee2 {
  // Private properties
  int? _id;
  String? _name;

// Getter method to access private property _id
  int get Id {
    return _id!;
  }
// Getter method to access private property _name
  String get Name => _name!;
// Setter method to update private property _id
  void set Id(int id) {
    this._id = id;
  }
// Setter method to update private property _name
  void set Name(String name) => this._name = name;
  
}


void main () {
  Employee2 e1 = Employee2();
  e1.Id = 1;
  print(e1.Id);


  Employee e2 = Employee();

  print(e2._id);
}