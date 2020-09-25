import 'package:flutter/material.dart';
import 'package:groceryapp/models/CartModel.dart';
import 'package:groceryapp/screens/CartScreen.dart';
import 'package:groceryapp/utilities/JsonData.dart';
import 'package:groceryapp/models/CartItem.dart';
// import 'package:groceryapp/models/CartBloc.dart';

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
          IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            onPressed: () {},
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

// Container(
//   height: 150.0,
//   child: ListView(
//     padding: EdgeInsets.all(10.0),
//     scrollDirection: Axis.horizontal,
//     shrinkWrap: true,
//     children: [
//       CircleAvatar(
//         radius: 70.0,
//         child: Icon(
//           Icons.home,
//           size: 50.0,
//           color: Color(0xFFEF4C5A),
//         ),
//         backgroundColor: Colors.white,
//       ),
//       CircleAvatar(
//         radius: 70.0,
//         child: Icon(
//           Icons.card_membership,
//           size: 50.0,
//           color: Color(0xFFEF4C5A),
//         ),
//         backgroundColor: Colors.white,
//       ),
//       CircleAvatar(
//         radius: 70.0,
//         child: Icon(
//           Icons.fastfood,
//           size: 50.0,
//           color: Color(0xFFEF4C5A),
//         ),
//         backgroundColor: Colors.white,
//       ),
//       CircleAvatar(
//         radius: 70.0,
//         child: Icon(
//           Icons.style,
//           size: 50.0,
//           color: Color(0xFFEF4C5A),
//         ),
//         backgroundColor: Colors.white,
//       ),
//     ],
//   ),
// ),
// SizedBox(
//   height: 20.0,
// ),
