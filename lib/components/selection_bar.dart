import 'package:flutter/material.dart';

class SelectionBar extends StatelessWidget {
  final Function onTap;
  final int currentIndex;

  SelectionBar({this.onTap, this.currentIndex});

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Text('✊'), title: Text('Piedra')),
        BottomNavigationBarItem(icon: Text('✋'), title: Text('Papel')),
        BottomNavigationBarItem(icon: Text('✌️'), title: Text('Tijera'))
      ],
      onTap: onTap,
      currentIndex: currentIndex,
    );
  }
}
