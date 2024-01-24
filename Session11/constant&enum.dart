/*
! Rule For Declaring Constant Constructor In Dart
? All properties of the class must be final.
? Only class containing const constructor is initialized using the const keyword.
? Benefits: Improves the performance of the program.
*/

class Car {
  final String? name;
  final String? model;

  // Constant Constructor
  const Car({this.name, this.model});
}

/*
An enum is a special type that represents a fixed number of constant values. An enum is declared using the keyword enum followed by the enum’s name.
*/

enum Gender {male, female}

class Person {
  String? name;
  int? age;
  Gender? gender;

  Person(this.name, this.age, this.gender);
} 

void main () {
  Person p1 = Person('mohamed', 30, Gender.male);

  Chat chat = Chat(Status.online);
}

class Chat {
  Status? status;

  Chat(this.status);
}

enum Status {
  online, offline
}
