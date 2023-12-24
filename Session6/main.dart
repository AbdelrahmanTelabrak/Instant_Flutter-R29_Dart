import 'dart:io';

String algo6(String name){
  String greetings = 'Hello, $name!';
  return greetings;
}

bool algo7(String str){
  return str.length.isEven;
}

String algo8(String str){
  return str.substring(1);
}


void main(){
  print(algo6('Ali'));
  print('=========================');
  print(algo7('Hello'));
  print('=========================');
  print(algo8('Hello'));
}