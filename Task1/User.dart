import "Order.dart";

class User{
  String? username;
  String? email;
  String? password;
  List<Order>? orders;

  User(String username, String email, String password){
    this.username = username;
    this.email = email;
    this.password = password;
    orders = [];
  }

  void addOrder(Order order){
    orders!.add(order);
  }
}