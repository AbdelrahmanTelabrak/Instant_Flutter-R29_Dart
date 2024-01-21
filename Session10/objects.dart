import 'classes.dart';

void main() {
  // Here animal is object of class Animal. 
  Animal animal = Animal(); // new keyword is unnecessary
  animal.name = "Lion";
  animal.numberOfLegs = 4;
  animal.lifeSpan = 10;
  animal.displayInfo();
}