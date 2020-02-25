import 'package:flutter/material.dart';
import './screen/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu primeiro Aplicativo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Home()
    );
  }
}

