import 'package:flutter/material.dart';
import 'package:practic_omega_r/pages/home.dart';
import 'package:practic_omega_r/pages/menuPage.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.green
    ),
    initialRoute: '/',
    routes: {
        '/':(BuildContext context) => Home(),
        '/second':(BuildContext context) => MenuPage()
    }
));