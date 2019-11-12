import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String source = 'Flutter';

  void changeTitle() {
    this.setState(() {
      if (source == 'Flutter') {
        source = 'Stateful Widget';
      } else {
        source = 'Flutter';
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
        child: Text('¡Hola mundo desde $source!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeTitle,
        tooltip: 'Cambiar',
        child: Icon(Icons.swap_horiz),
      ),
    );
  }
}
