void main() {

/***************
compare functions
***************/
Function ex1 = printName;
Function repeatedEx1 = printName;
Function ex2 = printNameWithParam;
print(ex1 == repeatedEx1);

print('''

######################################
Start Optional
######################################

''');
/***************
test optional
***************/
print(orderedParam());

print('''

######################################
Start Named
######################################

''');
/***************
test named
***************/
print(namedParam(email: 'mail@is.required'));

print('''

######################################
Start Callback
######################################

''');
/***************
test callback
***************/
print(parent(myCall));


print(namedFunc());

var x = ''' 
1. welcome admin
2. color = black
3. fontSize
4. type () {
  return admin | user | superAdmin
} 


welcome admin
# Style:
  - color: black 
  - fontSize:
# type: admin
''';
}


/***************
Ex-1 Void Func - without parameter
***************/
void printName () {
  print('mohamed');
}

/***************
Ex-2 Void Func - with parameter
***************/
void printNameWithParam (String username) {
  print(username);
}

/***************
Ex-3 return Func
***************/
String returnName (String username) {
  return username;
}

/***************
Ex-4 Arrow Func
// Only an expression - not a statement - can apear between the arrow (=>) and the semicolon (;). for ex you can't put an if statement there, but you can use a conditional expression
***************/

String returnArrowFunc (String username) => username;

/***************
Ex-5 anonymous Func
***************/
List namedFunc () {
  List numbers = [4,5,8,7];
  return numbers.map((e) => e + 1).toList();
}

/***************
Ex-6 ordered parameter
***************/
String orderedParam ([username = 'somebody', email]) {
  return 'username: $username, email: $email';
}

/***************
Ex-6 named parameter
***************/
String namedParam ({username, required email}) {
  return 'username: $username, email: $email';
}

/***************
Ex-7 callback
***************/
String parent (Function callback) {
  return callback();
}

String myCall () {
  return 'this string from my call';
}

