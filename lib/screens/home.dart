import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/mechanics/game.dart';
import 'package:rock_paper_scissors/components/selection_bar.dart';
import 'package:rock_paper_scissors/components/board.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 1;
  int _userScore = 0;
  int _computerScore = 0;
  String _message = '¡Haz una elección!';

  void createGame(int index) {
    String userChoice = indexToChoice(index);
    Map gameResults = game(userChoice);
    String computerChoice = choiceToWord(gameResults['computerChoice']);
    String message = 'La computadora eligió $computerChoice.\n';

    if (gameResults['result'] == 0) {
      message += 'Hubo un empate 🙌';
      this.setState(() {
        this._index = index;
        this._message = message;
      });
    } else if (gameResults['result'] == 1) {
      message += '¡Has ganado! 😎';
      this.setState(() {
        this._index = index;
        this._message = message;
        this._userScore++;
      });
    } else if (gameResults['result'] == -1) {
      message += 'Perdiste 😭';
      this.setState(() {
        this._index = index;
        this._message = message;
        this._computerScore++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GameBoard(
          userScore: _userScore,
          computerScore: _computerScore,
          message: _message,
        ),
        bottomNavigationBar: SelectionBar(
          currentIndex: _index,
          onTap: createGame,
        ));
  }
}
