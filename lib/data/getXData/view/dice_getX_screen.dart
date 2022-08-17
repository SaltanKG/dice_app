import 'dart:developer';

import 'package:dice_app/data/getXData/controllers/dice_controller.dart';
import 'package:dice_app/widgets/app_bar_widget.dart';
import 'package:dice_app/widgets/dice_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiceGetXScreen extends StatelessWidget {
  DiceGetXScreen({Key key}) : super(key: key);
  final DiceController _diceController = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    log('Build ==> ${_diceController.count.value}');
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: const AppBarWidget(),
      body: Obx(
        () => DiceContentWidget(
          leftNumber: _diceController.leftNumber.value,
          rightNumber: _diceController.rightNumber.value,
          onPressed: () {
            _diceController.getRandomNumber();
          },
        ),
      ),
    );
  }
}
