import 'package:flutter/material.dart';
import 'screens/home.dart';

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: HomePage(title: 'Hola Mundo'),
    );
  }
}
