import 'package:flutter/material.dart';

import 'dice_widget.dart';

class DiceContentWidget extends StatelessWidget {
  final int leftNumber;
  final int rightNumber;
  final void Function() onPressed;
  const DiceContentWidget({Key key, this.leftNumber, this.rightNumber, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DiceWidget(
              diceNumber: leftNumber.toString(),
              onPressed: onPressed,
            ),
            const SizedBox(
              width: 15.0,
            ),
            DiceWidget(
              diceNumber: rightNumber.toString(),
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
