import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: '',
  hintStyle: TextStyle(color: Color(0xFFEF4C5A)),
  fillColor: Color(0xFFFBC199),
  filled: true,
  suffixIcon: IconButton(
    icon: Icon(
      Icons.clear,
      color: Color(0xFFEF4C5A),
    ),
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFFBC199), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFEF4C5A), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);
