void fun(){
  print('hello');
}

List<bool> arrowFun(List<int> numbers)=>numbers.map((e) => e%2==0).toList();

List namedFun(){
  var list = [3, 5, 6, 19];
  return list.map((e) => e+1).toList();
}

void main(){
  //Function is a datatype in Dart.
  var fun1 = fun;
  var fun2 = fun;
  if(fun1==fun2)
    print('Same function');  

  //Arrow function
  print(arrowFun([2, 3, 4, 5]));

  //Annonymus Function
  print(namedFun());

  //Edit in github
}
