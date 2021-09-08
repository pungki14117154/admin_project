//import 'package:admin_project/screen/home_screen.dart';
import 'package:admin_project/screen/login_screen.dart';
//import 'package:admin_project/screen/zonk.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      // HomeScreen(),
      //zonk(),
    );
  }
}
