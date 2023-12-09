import 'Product.dart';

class Order{
  String? order_id;
  int? total_price;
  List<Product>? products;

  Order(String order_id){
    this.order_id = order_id;
  }

  int getTotalPrice(){
    var sum = 0;
    for (var element in products!) {
      sum += element.product_price!;
    }
    return sum;
  }

  void addProduct(Product product){
    products!.add(product);
  }
}