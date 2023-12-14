//1. required string 'role'(user, admin, superadmin)
//2. optional named parameter 'style' ->contains: 'color'(default value = black) , 'fontsize' values

//#type: Function that return the role in the required string.


String funTask(String str, {String color = 'black', int? fontsize, required Function type}){ 
  
  return '''''$str
  # Style:
   ->Color: $color 
   ->font size: $fontsize
  #Type: ${type(str)}''''';
}

String getType(String str)=>str.split(' ').last;
void main(){

  String str = "Welcome Admin";
  print(funTask(str, color: 'Red', type:getType));
  print(funTask(str, color: 'Red', type:(str){
      //using indexOf()
  }));
}