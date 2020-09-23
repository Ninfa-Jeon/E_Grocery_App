import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';

class CartModel extends Model {
  List<CartItem> _cart = [];
  List<CartItem> get cart => _cart;

  ///inserts item of the type CartItem to the List cart
  ///
  /// if item is already present, increments the quantity
  /// by calling updateItemQuantity()
  void addItem(CartItem item) {
    int index =
        _cart.indexWhere((element) => element.itemName == item.itemName);
    if (index == -1) {
      _cart.add(item);
    } else {
      updateItemQuantity(_cart[index], _cart[index].quantity + 1);
    }
    notifyListeners();
  }

  ///internally calls updateItemQuantity() with decremented
  ///value of 'quantity' field
  void removeItem(CartItem item) {
    int index =
        _cart.indexWhere((element) => element.itemName == item.itemName);
    updateItemQuantity(_cart[index], _cart[index].quantity - 1);
    notifyListeners();
  }

  ///updates the 'quantity' field of the supplied CartItem
  ///with the value of newQuantity
  ///
  /// checks if 'quantity' is zero, if yes then removes the CartItem
  /// from the cart
  void updateItemQuantity(CartItem item, int newQuantity) {
    newQuantity != 0 ? item.quantity = newQuantity : _cart.remove(item);
    notifyListeners();
  }

  void deleteItem(CartItem item) {
    _cart.remove(item);
    notifyListeners();
  }

  static CartModel of(BuildContext context) =>
      ScopedModel.of<CartModel>(context);
}

class CartItem {
  String itemName;
  double price;
  int quantity;

  CartItem({this.itemName, this.price, this.quantity: 1});

  CartItem.fromJson(Map<String, dynamic> json)
      : itemName = json['title'],
        price = json['price'],
        quantity = 1;

  // Map<String, dynamic> toJson() =>
  //     {'title': itemName, 'price': price, 'quantity': quantity};
}
