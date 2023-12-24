import 'dart:io';
/***************
# Task 1

Create a function that takes a string as input and returns the reversed version of the string.
***************/

String reverse(String str){
  // String ans ='';
  // for (var i = str.length-1; i >= 0; i--) {
  //   ans+= str[i];
  // }
  // return ans;
  var chars = str.split('');
  return chars.reversed.join();
}

/***************
# Task 2

Create a function that takes a string as input and returns the number of vowels (a, e, i, o, u) in the string.
***************/

int vowels(String str){
  var vowels = 'aeiou';
  int vCount =0;
  for (var itr in str.toLowerCase().split('')) {
    if(vowels.contains(itr))
      vCount++;
  }
  return vCount;
}


/***************
# Task 3

Create a function that takes a name and age. Print out a message that tells how many years they have to be 100 years old.
***************/

String until_100(String name, int age){
  int ans = 100 - age;
  return '$name has $ans left to be 100 years old.';
}


/***************
# Task 4

Create a function that takes a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.

Ex: 
  input: my name is mohamed
  output: mohamed is name my
***************/

String splitMulti(String line){
  var words = line.split(' ');
  return words.reversed.join(' ');
}


/***************
# Task 5

Create a function that takes a square size to draw game boards that look like this:

 --- --- --- 
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- --- 

 note that square size of the above drawing is 3 `that mean 3*3`
***************/

void drawBoard(int size){
  for (int i=0; i<size; i++){
    for (var j = 0; j < size; j++) {
      stdout.write(' ---');
    }//-- OR--
    //print(' ---'*size);
    stdout.write('\n');
    for (int j=0; j<size;j++){
      stdout.write('|   ');
    }//-- OR --
    //print('|   '*size+1);
    stdout.write('|\n');
  }
  for (var i = 0; i < size; i++) {
    stdout.write(' ---');
  }//-- OR--
  //print(' ---'*size);
}

void main () {
  // please test your functions here and use the folowing seprator among calling functions with task number 

  print('''

  #################################
  Task 1
  #################################
  
  ''');
  print(reverse('Hello!'));

  print('''

  #################################
  Task 2
  #################################
  
  ''');
  print('The alphapet has ${vowels('abcdefghijklmnopqrstuvwxyz')} vowels');

  print('''

  #################################
  Task 3
  #################################
  
  ''');
  print(until_100('Ahmed', 24));

  print('''

  #################################
  Task 4
  #################################
  
  ''');
  print(splitMulti('my name is mohammed'));

  print('''

  #################################
  Task 5
  #################################
  
  ''');
  drawBoard(5);

}