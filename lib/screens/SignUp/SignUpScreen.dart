import 'package:flutter/material.dart';
import 'package:groceryapp/screens/Home/HomeScreen.dart';
import 'package:groceryapp/screens/SignIn/SignInScreen.dart';
import 'package:groceryapp/constants/constantDecoration.dart';

class SignUp extends StatelessWidget {
  static const String id = 'sign_up_screen';
  final _namecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _pwdcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFE795F),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30.0,
                      ),
                      child: Text(
                        'Sign Up',
                        style:
                            TextStyle(color: Color(0xFFFBC199), fontSize: 16.0),
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        'Sign In',
                        style:
                            TextStyle(color: Color(0xFFFA4D09), fontSize: 16.0),
                      ),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, SignIn.id);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                ListTile(
                  title: Text(
                    'Sign up to Shop',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEA481A),
                    ),
                  ),
                  subtitle: Text(
                    'Lets get started',
                    style: TextStyle(
                      color: Color(0xFFFBC199),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 10.0,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Color(0xFFEF4C5A)),
                    controller: _namecontroller,
                    cursorColor: Color(0xFFEF4C5A),
                    decoration: kTextFieldDecoration.copyWith(
                        suffixIcon: IconButton(
                          onPressed: () {
                            _namecontroller.clear();
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Color(0xFFEF4C5A),
                          ),
                        ),
                        hintText: 'Enter your name here'),
                    onChanged: (value) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Color(0xFFEF4C5A)),
                      controller: _emailcontroller,
                      cursorColor: Color(0xFFEF4C5A),
                      decoration: kTextFieldDecoration.copyWith(
                          suffixIcon: IconButton(
                            onPressed: () {
                              _emailcontroller.clear();
                            },
                            icon: Icon(
                              Icons.clear,
                              color: Color(0xFFEF4C5A),
                            ),
                          ),
                          hintText: 'Enter your email here'),
                      onChanged: (value) {}),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 20.0,
                  ),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(color: Color(0xFFEF4C5A)),
                    controller: _pwdcontroller,
                    cursorColor: Color(0xFFEF4C5A),
                    decoration: kTextFieldDecoration.copyWith(
                        suffixIcon: IconButton(
                          onPressed: () {
                            _pwdcontroller.clear();
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Color(0xFFEF4C5A),
                          ),
                        ),
                        hintText: 'Enter your password here'),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
