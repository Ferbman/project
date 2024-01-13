import "package:flutter/material.dart";
import 'package:project/pages/CartPage.dart';
import 'package:project/pages/ItemPage.dart';
import 'package:project/pages/LoginScreen.dart';
import 'package:project/pages/ProfilePage.dart';
import 'package:project/pages/RegisterPage.dart';
import './pages/Homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => LoginScreen(),
        "itemPage": (context) => ItemPage(),
        "cartPage": (context) => CartPage(),
        "homePage": (context) => HomePage(),
        "profilePage": (context) => ProfilePage(),
        "registerPage": (context) => RegisterPage(),
        "loginPage": (context) => LoginScreen()
      },
    );
  }
}
