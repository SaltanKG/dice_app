import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  final String diceNumber;
  final void Function() onPressed;
  const DiceWidget({@required this.diceNumber,@required this.onPressed, Key key,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
          onPressed: onPressed ,
          child: Image.asset('assets/images/dice$diceNumber.png')),
    );
  }
}
