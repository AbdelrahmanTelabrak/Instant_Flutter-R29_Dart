void main(List<String> args) {
  print('********************************\n');

  var all = EdgeInsets.all(5.0);
  all.displayInfo();
  print('********************************\n');

  var fromLTRB = EdgeInsets.fromLTRB(left: 5.0, right: 6.5, top: 14);
  fromLTRB.displayInfo();
  print('********************************\n');

  var only = EdgeInsets.only(bottom: 8.45, top: 44);
  only.displayInfo();
  print('********************************\n');

  var chat = Chat(status: Status.online);
  chat.display();
  print('********************************\n');

  print(Colors.black);
  print(Colors.red);
  print(Colors.blue);
  print('********************************\n');


}

class Colors{
  static String red = 'red';
  static String blue = 'blue';
  static String black = 'black';
}

enum Status{online, offline}

class Chat{
  Status status;

  Chat({required this.status});

  void display(){
    print(this.status);
  }
}

enum Gender{male, female}

class Person{
  String? name;
  int? age;
  Gender? gender;

  Person({this.name, this.age, this.gender});
}

class EdgeInsets{
  double left = 0.0;
  double right = 0.0;
  double top = 0.0;
  double bottom = 0.0;

  EdgeInsets(this.left, this.right, this.top, this.bottom);

  EdgeInsets.all(double value){
    this.left = value;
    this.right = value;
    this.top = value;
    this.bottom = value;
  }

  EdgeInsets.fromLTRB({this.left = 0.0, this.top = 0.0, this.right = 0.0, this.bottom = 0.0});

  EdgeInsets.only({double left = 0.0, double top = 0.0, double right = 0.0, double bottom = 0.0}){
    int cnt = 0;
    if (left>0)
      cnt++;
    if (right>0)
      cnt++;
    if (top>0)
      cnt++;
    if (bottom>0)
      cnt++;

    if (cnt>1 || cnt == 0){
      print('ERROR... \nEdgeInsets.only() accepts one and only one parameter!!');
    }
    else{
      this.left = left;
      this.top = top;
      this.right = right;
      this.bottom = bottom;
    }
  }

  void displayInfo(){
    print('left: ${this.left}, \ntop: ${this.top}, \nright: ${this.right}, \nbottom: ${this.bottom}\n');
  }
}