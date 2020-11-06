import 'package:Demo/page/HomePage.dart';
import 'package:Demo/page/LoginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Satish Pandey",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}
