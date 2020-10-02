import 'package:flutter/material.dart';
import 'package:groceryapp/models/CartModel.dart';
import 'package:scoped_model/scoped_model.dart';
// import 'package:groceryapp/blocs/CartBloc.dart';

class CartScreen extends StatefulWidget {
  static const String id = 'cart_screen';
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBC199),
      appBar: AppBar(
        title: Text('My Cart'),
        centerTitle: true,
        backgroundColor: Color(0xFFEF4C5A),
      ),
      body: ScopedModelDescendant<CartModel>(
        rebuildOnChange: true,
        builder: (context, child, model) => model.cart.length == 0
            ? Center(
                child: Text('Cart Empty🙁'),
              )
            : ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  List cartItems = model.cart;
                  return Card(
                    color: Colors.white,
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListTile(
                      leading: IconButton(
                        tooltip: 'Add item',
                        icon: Icon(Icons.add_circle),
                        onPressed: () {
                          model.addItem(cartItems[index]);
                        },
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            tooltip: 'Remove item',
                            icon: Icon(Icons.remove_circle),
                            onPressed: () {
                              model.removeItem(cartItems[index]);
                            },
                          ),
                          IconButton(
                            tooltip: 'Delete item',
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              model.deleteItem(cartItems[index]);
                            },
                          ),
                        ],
                      ),
                      title: Text(
                        cartItems[index].itemName,
                        style: TextStyle(
                          color: Color(0xFFEF4C5A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Quantity: ${cartItems[index].quantity}'),
                    ),
                  );
                },
                itemCount: model.cart.length,
              ),
      ),
    );
  }
}
