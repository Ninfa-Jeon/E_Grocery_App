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
