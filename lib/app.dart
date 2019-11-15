import 'package:flutter/material.dart';
import 'screens/home.dart';

class RockPaperScissorsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rock, Paper, Scissors',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: HomePage(title: 'Rock, Paper, Scissors'),
    );
  }
}
