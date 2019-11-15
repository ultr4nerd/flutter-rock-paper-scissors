import 'package:flutter/material.dart';

class GameBoard extends StatelessWidget {
  final int userScore;
  final int computerScore;
  final String message;
  final bool win;

  GameBoard({this.userScore, this.computerScore, this.message: '', this.win});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            '$userScore:$computerScore',
            style: TextStyle(fontSize: 50, color: Colors.pink),
          ),
          Text(
            message,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
