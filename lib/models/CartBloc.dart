// import 'dart:async';
// import 'package:groceryapp/models/CartItem.dart';
//
// class CartBloc {
//   final cartStreamController = StreamController.broadcast();
//
//   Stream get getStream => cartStreamController.stream;
//
//   List<CartItem> _cart = [];
//   List<CartItem> get cart => _cart;
//
//   ///inserts item of the type CartItem to the List cart
//   ///
//   /// if item is already present, increments the quantity
//   /// by calling updateItemQuantity()
//   void addItem(CartItem item) {
//     int index =
//         _cart.indexWhere((element) => element.itemName == item.itemName);
//     if (index == -1) {
//       _cart.add(item);
//     } else {
//       updateItemQuantity(_cart[index], _cart[index].quantity + 1);
//     }
//     cartStreamController.sink.add(_cart);
//   }
//
//   ///internally calls updateItemQuantity() with decremented
//   ///value of 'quantity' field
//   void removeItem(CartItem item) {
//     int index =
//         _cart.indexWhere((element) => element.itemName == item.itemName);
//     updateItemQuantity(_cart[index], _cart[index].quantity - 1);
//     cartStreamController.sink.add(_cart);
//   }
//
//   ///updates the 'quantity' field of the supplied CartItem
//   ///with the value of newQuantity
//   ///
//   /// checks if 'quantity' is zero, if yes then removes the CartItem
//   /// from the cart
//   void updateItemQuantity(CartItem item, int newQuantity) {
//     newQuantity != 0 ? item.quantity = newQuantity : _cart.remove(item);
//     cartStreamController.sink.add(_cart);
//   }
//
//   void deleteItem(CartItem item) {
//     _cart.remove(item);
//     cartStreamController.sink.add(_cart);
//   }
//
//   void dispose() {
//     cartStreamController.close();
//   }
// }
//
// final bloc = CartBloc();
