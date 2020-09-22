import 'package:flutter/material.dart';
import 'package:groceryapp/models/CartModel.dart';
import 'package:scoped_model/scoped_model.dart';

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
        builder: (context, child, model) => model.items.length == 0
            ? Center(
                child: Text('Cart Empty🙁'),
              )
            : ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  List cartItemNames = model.items.keys.toList();
                  return Card(
                    color: Colors.white,
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListTile(
                      leading: IconButton(
                        tooltip: 'Add one',
                        icon: Icon(Icons.add_circle),
                        onPressed: () {
                          model.addItem(cartItemNames[index]);
                        },
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            tooltip: 'Remove one',
                            icon: Icon(Icons.remove_circle),
                            onPressed: () {
                              model.removeOnce(cartItemNames[index]);
                            },
                          ),
                          IconButton(
                            tooltip: 'Remove all',
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              model.removeItem(cartItemNames[index]);
                            },
                          ),
                        ],
                      ),
                      title: Text(
                        cartItemNames[index],
                        style: TextStyle(
                          color: Color(0xFFEF4C5A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                          'Quantity: ${model.items[cartItemNames[index]]}'),
                    ),
                  );
                },
                itemCount: model.items.length,
              ),
      ),
    );
  }
}
