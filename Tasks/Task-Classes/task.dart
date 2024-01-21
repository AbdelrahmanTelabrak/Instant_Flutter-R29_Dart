/***************
create a Text class contains:

* Attributes:
  - String data
  - TextStyle style
  - TextAlign align

* Methods:
  - constructor: initialize attributes
  - display: print data with all styling if exists.

* Ex:
  Text myText = Text('welcome', style: TextStyle(
    color: red,
    fontSize: 20,
    fontFamily: 'Arial'
  ), align: TextAlign('right'));

  myText.display();

* Results of Ex:
  data: welcome
  style: color red, size 20, family Arial
  align: right 
***************/

void main(List<String> args) {
  TextAlign align = TextAlign('right');
  TextStyle style = TextStyle(color: 'red', fontSize: 14, fontFamily: 'Poppins');
  Text text = Text('welcome', style: style, align: align);
  text.displayInfo();
}

class Text{
  String data;
  TextStyle style;
  TextAlign align;

  Text(this.data, {required this.style, required this.align});

  void displayInfo(){
    print('data: ${this.data},\nstyle: ${this.style.displayInfo()}, \nalign: ${this.align.displayInfo()}');
  }
}

class TextStyle{
  String color;
  int fontSize;
  String fontFamily;

  TextStyle({required this.color, required this.fontSize, required this.fontFamily});

  String displayInfo(){
    return ('color: ${this.color}, size: ${this.fontSize}, fontFamily: \'${this.fontFamily}\'');
  }
}

class TextAlign{
  String? align;

  TextAlign(this.align);

  String displayInfo(){
    return this.align!;
  }
}