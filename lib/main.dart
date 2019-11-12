import 'package:flutter/material.dart';

void main() => runApp(HelloWorldApp());

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hola mundo'),
        ),
        body: Center(
          child: Text('Hola mundo en Flutter ;)'),
        ),
      ),
    );
  }
}
