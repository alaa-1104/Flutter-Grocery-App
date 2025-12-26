import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  // list of items on sale
  final List _shopItems = [
    // [itemName,itemPrice , imagePath, color]
    ["avoca","4.00","assets/images/avoca.png",Colors.green],
    ["banana","2.50","assets/images/banana.png",Colors.yellow],
    ["chicken","4.00","assets/images/chicken.png",Colors.brown],
    ["tomato","4.00","assets/images/tomato.png",Colors.red],

  ];

  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;



  //add item to cart
  void addItemToCart(int index){
    _cartItems.add(shopItems[index]);
    notifyListeners();
  }
  //remove item from cart
  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }
  //calculate total price
  String calculateTotal(){
    double totalPrice = 0;
    for(int i =0; i<_cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}