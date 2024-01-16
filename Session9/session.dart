import 'dart:core';

/*
- Data type: casting
- Function: scopes
- Conditions: Regular expression
*/

void main(List<String> args) {
  // final users = const {'id': 24, 'age': 21};    // This prevents any changes to both,
  //                                               // the variable 'users' and the item of the map
  // users['id'] = 44;
  // print(users);

  // Keyword 'is' is used to compare types: Type operator.

  num n1 = 5;
  int n2 = n1 as int;
  n2~/=2;
  print(n2);
  
  List<dynamic> mylist = [5, 4, 3];

  var x = mylist.cast<int>();

  print(mylist.runtimeType);
  print(x.runtimeType);

  printElementType(x);
  printElementType(n1);
  printElementType(n2);

  //******************************************* */
  //Regular exp.
  
  //how to chech if this is the correct format for the email.
  String patternOfEmail = r'^[\w-\.]+@([\w-]+\.)[\w-]{2,4}$';     //  \w = [a-zA-Z0-9_]
  String email = '#asdfad@gmail.com';
  RegExp regex = RegExp(patternOfEmail);
  print(regex.hasMatch(email));

  String patternTest = r'[0-9]{2}';
  String test = '1 2 2 4 5 6';
  RegExp testRegex = RegExp(patternTest);
  print(testRegex.hasMatch(test));

  String patternSpecialChars = r'[^a-zA-Z0-9]';
  String specialChars = 'askjfaks;asdfa';
  RegExp specialCharsRegex = RegExp(patternSpecialChars);
  print(specialCharsRegex.hasMatch(specialChars));

}

void printElementType<T>(T element){
  print(element.runtimeType);
}