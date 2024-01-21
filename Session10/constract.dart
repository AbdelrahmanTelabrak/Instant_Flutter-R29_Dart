/* 
  * A constructor is a special method used to initialize an object.
  * It is called automatically when an object is created.
  * it can be used to set the initial values for the object’s properties.
  * The constructor’s name should be the same as the class name.
  * Constructor doesn’t have any return type.
*/

void main () {
  // using Area without constructor
  Area rect = Area();
  rect.length = 10;
  rect.breadth = 10;

  // using Area with constructor
  Area2 rect2 = Area2(10, 10);
  print(rect2.calculateArea());


  Area4 rect4 = Area4(5, 5);
  rect4.calculateArea();

  Text txt = Text('welcome flutter', style: TextStyle(
    color: 'white'
  ));

  Patient patient = Patient(name: 'Ahmed', age: 28, disease: 'Cold');
  patient.displayInfo();
  
  
}


// Area Class without constructor
class Area {
  double? length;
  double? breadth;

  double calculateArea() {
    return length! * breadth!;
  }
}


// Area Class with constructor
class Area2 {
  double? length;
  double? breadth;

  Area2(double lengthOfShape,double breadth) {
    print("Constructor called");
    this.length = lengthOfShape;
    this.breadth = breadth;
  }

  double calculateArea() {
    return length! * breadth!;
  }
}

// Write Constructor Single Line
class Area3 {
  double? length;
  double? breadth;

  Area3(this.length,this.breadth);

  double calculateArea() {
    return length! * breadth!;
  }
}


// Constructor With Optional Parameters
class Employee {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor
  Employee(this.name, this.age, [this.subject = "N/A", this.salary=0]);

  // Method
  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}

// Constructor With Named Parameters
class Chair {
String? name;
String? color;

// Constructor
Chair({this.name, this.color});

// Method
void display() {
  print("Name: ${this.name}");
  print("Color: ${this.color}");
}
}

// Constructor With Default Values
class Table {
  String? name;
  String? color;

  // Constructor
  Table({this.name = "Table1", this.color = "White"});

  // Method
  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

/* Task 
Create a class Patient with three properties name, age, and disease. The class has one constructor. The constructor is used to initialize the values of the three properties. Also, create an object of the class Patient called patient. Print the values of the three properties using the object.
*/

class Patient{
  String name;
  String disease;
  int age;

  Patient({required this.name, required this.age, required this.disease});

  void displayInfo(){
    print('Patient:');
    print('name: ${this.name},\nage: ${this.age},\ndisease: ${this.disease}');
  }
}


class Area4 {
  final double length;
  final double breadth;

  const Area4(this.length,this.breadth);

  double calculateArea() {
    return length * breadth;
  }
}


class Text {
  final String data;
  final TextStyle? style;

  Text(this.data, {this.style});


  void displayText() {
    
  }
 
}

class TextStyle {
  final String? color;
  final double? fontSize;


  TextStyle({this.color = 'black', this.fontSize = 18});
}