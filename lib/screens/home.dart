import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String greeting = '¡Hola mundo desde Flutter!';

  void changeTitle() {
    this.setState(() {
      if (greeting == '¡Hola mundo desde Flutter!') {
        this.greeting = '¡Hola mundo desde Stateful Widget!';
      } else {
        this.greeting = '¡Hola mundo desde Flutter!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(this.greeting),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeTitle,
        tooltip: 'Cambiar',
        child: Icon(Icons.swap_horiz),
      ),
    );
  }
}
