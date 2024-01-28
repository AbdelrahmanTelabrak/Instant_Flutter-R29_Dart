/* 
## Task

* create a class Button contains:
  * Widget child 
  * Color color
  * double width
  * double height
  * Function onPressed
* class OutlinedButton contains:
  * Widget child
  * Color color
  * double width
  * double height
  * Function onPressed
  * Border border => Border(size: 1, color: Color.red)
* class IconButton contains:
  * Icon icon => Icon(icon: Icons.person, iconSize: 20)
  * Color color
  * double width
  * double height
  * Function onPressed
 */

class Widget {}

class Color {
  static String red = 'red';
  static String blue = 'blue';
  static String black = 'black';
}

enum Icons { person, child, arrow, search }

class Border {
  double? size;
  String? color;

  Border({this.size = 15, required this.color});
}

class Icon {
  Icons? icon;
  double? iconSize;

  Icon({required this.icon, this.iconSize = 15});
}

class BaseButton extends Widget{
  String? color;
  double? width;
  double? height;
  Function onPressed;

  BaseButton({this.color, this.width, this.height, required this.onPressed});
}

class Button extends BaseButton {
  Widget child;

  Button(
      {required this.child,
      required super.color,
      required super.width,
      required super.height,
      required super.onPressed});
}

class IconButton extends BaseButton {

  Icon icon;

  IconButton(
      {required this.icon,
      required super.color,
      required super.width,
      required super.height,
      required super.onPressed});
}

class OutlinedButton extends Button {
  Border border;
  OutlinedButton(
      {required this.border,
      required super.child,
      required super.color,
      required super.width,
      required super.height,
      required super.onPressed});
}

void main(List<String> args) {
  var button = Button(
      child: Widget(),
      color: Color.blue,
      width: 15,
      height: 20,
      onPressed: () {
        print('Hello, world!');
      });
  var iconButton = IconButton(
      icon: Icon(icon: Icons.arrow, iconSize: 12),
      color: Color.blue,
      width: 15,
      height: 20,
      onPressed: () {
        print('Hello, world!');
      });

  var outlinedButton = OutlinedButton(
      child: Widget(),
      color: Color.blue,
      width: 15,
      height: 20,
      onPressed: () {
        print('Hello, world!');
      },
      border: Border(color: Color.red, size: 8)
      );
}
