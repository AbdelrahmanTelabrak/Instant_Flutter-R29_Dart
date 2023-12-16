/***************
# Task 1

You are given an array of integers numbers and two integers left and right. Your task is to calculate a boolean array result, where result[i] = true if there exists an integer x, such that numbers[i] = (i + 1) * x and left ≤ x ≤ right. Otherwise, result[i] should be set to false.

## Ex: 
For numbers = [8, 5, 6, 16, 5], left = 1, and right = 3, the output should be solution(numbers, left, right) = [false, false, true, false, true].

For numbers[0] = 8, we need to find a value of x such that 1 * x = 8, but the only value that would work is x = 8 which doesn't satisfy the boundaries 1 ≤ x ≤ 3, so result[0] = false.

For numbers[1] = 5, we need to find a value of x such that 2 * x = 5, but there is no integer value that would satisfy this equation, so result[1] = false.

For numbers[2] = 6, we can choose x = 2 because 3 * 2 = 6 and 1 ≤ 2 ≤ 3, so result[2] = true.

For numbers[3] = 16, there is no an integer 1 ≤ x ≤ 3, such that 4 * x = 16, so result[3] = false.

For numbers[4] = 5, we can choose x = 1 because 5 * 1 = 5 and 1 ≤ 1 ≤ 3, so result[4] = true.
***************/
import 'dart:io';

bool equation(int left, int right, int number, int i){
  num x = (number/(i+1));
  if(x%1>0)
    return false;
  return left<= x && x<=right;
}

void main(){
  List<int> input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> input2 = [];
  print('Enter the size of the list:');
  int listSize = int.parse(stdin.readLineSync()!);
  int item;
  print('Enter the items of the list:');
  for (int i =0; i<listSize;i++){
    item = int.parse(stdin.readLineSync()!);
    input2.add(item);
  }
  print('Enter the left and right value:');
  int left = int.parse(stdin.readLineSync()!);
  int right = int.parse(stdin.readLineSync()!);

  List<bool> ans = [];
  //print(ans);
  for(int i=0; i<input2.length;i++){
    ans.add(equation(left, right, input2[i], i));
  }
  print(ans);
}