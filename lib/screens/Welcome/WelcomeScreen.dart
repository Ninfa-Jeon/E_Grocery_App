import 'package:flutter/material.dart';
import 'file:///F:/clg/AndroidStudioProjects/grocery_app/lib/screens/SignIn/SignInScreen.dart';
import 'file:///F:/clg/AndroidStudioProjects/grocery_app/lib/screens/SignUp/SignUpScreen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFE795F),
      body: Stack(
        children: <Widget>[
          Center(
            child: ListTile(
              title: Text(
                'LOGO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 80.0,
                  color: Color(0xFFFBC199),
                  fontWeight: FontWeight.w900,
                ),
              ),
              subtitle: Text(
                'Welcome!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFBC199),
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 5,
            left: MediaQuery.of(context).size.width / 4.5,
            child: RaisedButton(
              elevation: 10.0,
              color: Color(0xFFFBC199),
              disabledColor: Color(0xFFFBC199),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    color: Color(0xFFFE795F),
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, SignIn.id);
              },
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 8,
            left: MediaQuery.of(context).size.width / 4.5,
            child: RaisedButton(
              elevation: 10.0,
              focusColor: Color(0xFFFBC199),
              color: Color(0xFFFE795F),
              disabledColor: Color(0xFFFBC199),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Color(0xFFFBC199),
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(
                  color: Color(0xFFFBC199),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, SignUp.id);
              },
            ),
          )
        ],
      ),
    );
  }
}
//Color(0xFFEF4C5A)
