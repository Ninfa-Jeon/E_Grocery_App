import 'package:flutter/material.dart';
import 'package:groceryapp/models/CartModel.dart';
import 'package:groceryapp/screens/Cart/CartScreen.dart';
import 'package:groceryapp/models/JsonData.dart';
import 'package:groceryapp/models/CartItem.dart';
// import 'package:groceryapp/blocs/CartBloc.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBC199),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'The Shop',
        ),
        actions: [
          Icon(
            Icons.filter_list,
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, CartScreen.id);
            },
          ),
        ],
        backgroundColor: Color(0xFFEF4C5A),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: json.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              title: Text(
                json[index]['title'],
                style: TextStyle(
                  color: Color(0xFFEF4C5A),
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('\$${json[index]['price']}/-'),
              trailing: FlatButton(
                child: Text('Add to cart'),
                onPressed: () {
                  CartModel.of(context).addItem(CartItem.fromJson(json[index]));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
