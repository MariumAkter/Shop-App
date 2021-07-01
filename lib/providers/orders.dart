import 'package:flutter/cupertino.dart';
import './cart.dart';
class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> productId;
  final DateTime dateTime;

  OrderItem({
    required this.id,
    required this.amount,
    required this.productId,
    required this.dateTime,

});
}

class Orders with ChangeNotifier{
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }
  void addOrder(List<CartItem> cartProducts, double total){
    _orders.insert(0,
        OrderItem(id: DateTime.now().toString(),
            amount: total,
            productId: cartProducts,
            dateTime: DateTime.now(),),);
    notifyListeners();
  }

}