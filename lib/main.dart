import 'package:flutter/material.dart';
import 'package:groceryapp/screens/CartScreen.dart';
import 'package:groceryapp/screens/WelcomeScreen.dart';
import 'package:groceryapp/screens/SignInScreen.dart';
import 'package:groceryapp/screens/SignUpScreen.dart';
import 'package:groceryapp/screens/HomeScreen.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:groceryapp/models/CartModel.dart';

void main() => runApp(GroceryApp());

class GroceryApp extends StatelessWidget {
  final cartModel = CartModel();
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
      model: cartModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          SignIn.id: (context) => SignIn(),
          SignUp.id: (context) => SignUp(),
          HomeScreen.id: (context) => HomeScreen(),
          CartScreen.id: (context) => CartScreen(),
        },
      ),
    );
  }
}
