/*
You are given an list of integers a. A new list b is generated by rearranging the elements of a in the following way:

b[0] is equal to a[0];
b[1] is equal to the last element of a;
b[2] is equal to a[1];
b[3] is equal to the second-last element of a;
b[4] is equal to a[2];
b[5] is equal to the third-last element of a;
and so on.
Your task is to determine whether the new list b is sorted in strictly ascending order or not.

Here is how the process of generating the new list b works:



Example

For a = [1, 3, 5, 6, 4, 2], the output should be solution(a) = true.

The new list b will look like [1, 2, 3, 4, 5, 6], which is in strictly ascending order, so the answer is true.

For a = [1, 4, 5, 6, 3], the output should be solution(a) = false.
The new list b will look like [1, 3, 4, 6, 5], which is not in strictly ascending order, so the answer is false.
*/
/* 
Solution:
  using 2 pointers left, right. i points to the first element and j to the last element.
  while left <= right
  add a[left] to b list, then check if the (left != right) then add a[right] to b list.
  incremeant left++ and decremeant right--
  print(b);
 */
import 'dart:core'; 
import 'dart:collection';

bool solve(List<int> a){
  int left = 0, right = a.length-1;
  List b = [];
  while (left<=right){
    b.add(a[left]);
    if (left != right)
      b.add(a[right]);
    left++;right--;
  }
  print(b);
  for (var i = 1; i < b.length; i++) {
    if (b[i]<b[i-1])
      return false;
  }
  return true;
}
void main() {
  var a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  //to get the max or min element in a list use list.reduce((value, element)=> value>element?value:element)
  print(solve(a));
  // a.clear();
  a = [1, 3, 5, 6, 4, 2];
  print(solve(a));
}
