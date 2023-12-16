import 'dart:math';
/***************
# Task 1

Create a function that takes a number as input and returns the factorial of the number.
***************/

int factorial(int x){
  if (x==0)
    return 1;
  else
    return x * factorial(x-1);
}

/***************
# Task 2

Create a function that takes a number as input and check if this number prime or not.
***************/

bool isPrime(int x){
  if(x<=1)
    return false;
  for (var i =2; i*i <= x; i++){
    if(x%i==0 && x != i)
      return false;
  }
  return true;
}


/***************
# Task 3

Create a function that takes a number as input and return string `odd` or `even` after check if this number odd or even.
***************/

String odd_or_even(num x){
  if (x%2 == 0)
    return 'even';
  else
    return 'odd';
}


/***************
# Task 4

Create a function that takes a number as a guess, Generate a random number between 1 and 100. then tell us whether our guessed low, high, or exactly right.

Ex: 
  input: 20 `my guess`
  output: low `random 70 > my guess 20`
***************/

void guess(int x){
  int min = 1, max = 100;
  print('You guessed $x');
  int rand = min + Random().nextInt((max + 1) - min);
  print('I was thinking of the number $rand.');
  if (x<rand)
    print('You guessed low.');
  else if(x>rand)
    print('You guessed high.');
  else
    print('Congratulatoins, you guessed correctly!.');
}


/***************
# Task 5

Implement a function that takes as input three variables, and returns the largest of the three. 

note: Do this without using the Dart max() function!
***************/
num largest(num x, num y, num z){
  num max = -9e9 -5;
  if (x>max)
    max = x;
  if (y>max)
    max = y;
  if (z>max)
    max = z;
  return max;
}

void main () {
  // please test your functions here and use the folowing seprator among calling functions with task number 

  print('''

  #################################
  Task 1
  #################################
  
  ''');
  int task1 = 6;
  print('Factorial of $task1 is ${factorial(task1)}');

  print('''

  #################################
  Task 2
  #################################
  
  ''');
  int task2 = 13;
  if (isPrime(task2))
    print('$task2 is Prime');
  else
    print('$task2 is not Prime');

  print('''

  #################################
  Task 3
  #################################
  
  ''');
  int task3 = 358;
  print('$task3 is ${odd_or_even(task3)}');

  print('''

  #################################
  Task 4
  #################################
  
  ''');
  int task4 = 50;
  guess(task4);

  print('''

  #################################
  Task 5
  #################################
  
  ''');
  print('The largest number between $task1, $task2 and $task3 is ${largest(task1, task2, task3)}');
}