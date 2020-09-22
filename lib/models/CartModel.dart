import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';

class CartModel extends Model {
  Map<String, int> _items = {};
  Map get items => _items;
  void addItem(String itemName) {
    if (_items.containsKey(itemName)) {
      _items[itemName]++;
    } else {
      _items[itemName] = 1;
    }
    //_items.putIfAbsent(key, () => null)
    notifyListeners();
  }

  void removeOnce(String itemName) {
    _items[itemName]--;
    if (_items[itemName] <= 0) {
      _items.remove(itemName);
    }
    notifyListeners();
  }

  void removeItem(String itemName) {
    _items.remove(itemName);
    notifyListeners();
  }

  static CartModel of(BuildContext context) =>
      ScopedModel.of<CartModel>(context);
}
