
import 'package:flutter/material.dart';
import 'package:mobileweek1/login.dart';

import 'index.dart';
import 'home.dart';
import 'login.dart';
import 'register.dart';
import 'package:mobileweek1/config/constant.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      routes: {
        'Login' : (context) =>Login(),
        'Register' : (context) =>Register(),
      },
      theme: ThemeData(
        primaryColor: pcolor,
        secondaryHeaderColor: scolor,
      ),
    );
  }
}
