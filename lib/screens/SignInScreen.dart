import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:groceryapp/utilities/constants.dart';
import 'package:groceryapp/screens/SignUpScreen.dart';
import 'package:groceryapp/screens/HomeScreen.dart';

class SignIn extends StatelessWidget {
  static const String id = 'sign_in_screen';
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFE795F),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50.0,
            horizontal: 10.0,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    left: 30.0,
                  ),
                  child: FlatButton(
                    child: Text(
                      'Sign Up',
                      style:
                          TextStyle(color: Color(0xFFFA4D09), fontSize: 16.0),
                    ),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, SignUp.id);
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 50.0,
                    top: 40.0,
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Color(0xFFFBC199), fontSize: 16.0),
                  ),
                ),
              ),
              Positioned(
                top: 120.0,
                left: 50.0,
                child: Text(
                  'Sign in to Shop',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEA481A),
                  ),
                ),
              ),
              Positioned(
                width: 300.0,
                left: 30.0,
                top: 180.0,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Color(0xFFEF4C5A)),
                  controller: _controller,
                  cursorColor: Color(0xFFEF4C5A),
                  decoration: kTextFieldDecoration.copyWith(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: Color(0xFFEF4C5A),
                        ),
                        onPressed: () {
                          _controller.clear();
                        },
                      ),
                      hintText: 'Enter your email here'),
                  onChanged: (value) {},
                ),
              ),
              Positioned(
                right: 30.0,
                top: 250.0,
                child: FloatingActionButton(
                  elevation: 20.0,
                  backgroundColor: Color(0xFFFBC199),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFFEF4C5A),
                  ),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, HomeScreen.id);
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
