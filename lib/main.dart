import 'package:ecommerceapp/Screens/login_screen.dart';
import 'package:ecommerceapp/Screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        Signup_Screen.id: (context) => Signup_Screen()
      },
      home: LoginScreen(),
    );
  }
}
