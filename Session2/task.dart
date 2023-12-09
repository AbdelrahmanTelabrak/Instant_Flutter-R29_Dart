
void main(){
  print(reverseStr('Hello'));
  print(fact(5));
}

String reverseStr(String str){
  String ans = '';
  for (var i = str.length-1; i >= 0; --i) {
    ans += str[i];
  }
  return ans;
}

int fact(int x){
  if(x != 0)
    return x * fact(x-1);
  else
    return 1;
}