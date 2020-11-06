import 'package:Demo/page/HomePage.dart';
import 'package:Demo/page/LoginPage.dart';
import 'package:Demo/utils/constaint.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  Constaint.prefs=await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Satish Pandey",
    home: Constaint.prefs.getBool("loggedIn")==true?Homepage():LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}
