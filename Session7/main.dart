void main(){

  List x = [1,2];
  List y = x;
  List z = [...x, 234];

  x.add(3);

  print(x); // 1,2,3
  print(y); // 1,2,3
  //when using collections '=' operators refers to the list address not the values.

  print(z);
}