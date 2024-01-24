/*
If you want to define a variable or method that is shared by all instances of a class, you can use the static keyword. Static members are accessed using the class name. It is used for memory management.

A static variable is a variable that is shared by all instances of a class. It is declared using the static keyword. It is initialized only once when the class is loaded. It is used to store the class-level data.
*/

// Ex1
class Employee {
  // Static variable
  static int count = 0;
  // Constructor
  Employee() {
    count++;
  }
  // Method to display the value of count
  static void totalEmployee() {
    print("Total Employee: $count");
  }
}

void main () {
  Employee e1 = Employee(); // Colors.black = 'black'
  Employee e2 = Employee(); // 2
  print(Employee.count); // 2
  Employee.totalEmployee();

  Colors.black;
}

class Colors {
  static String black = 'black';
}