import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int soljak = 1;
  int onjak = 6;

  void baskandaOzgort() {
    Random random = Random();
    soljak = random.nextInt(6) + 1;
    onjak = random.nextInt(4) + 1;
    setState(() {});
    print('random.soljak ===> $soljak');
    print('random.onjak ===> $onjak');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: AppBar(
        backgroundColor: Color(0xffFF5353),
        title: const Text(
          'ТАПШЫРМА-05',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TextButton(
                    onPressed: baskandaOzgort,
                    child: Image.asset('assets/images/dice$soljak.png')),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: TextButton(
                    onPressed: baskandaOzgort,
                    // () {
                    //   onjak = 1;
                    //   setState(() {});
                    //   print('GestureDetector ====> $GestureDetector');
                    // },
                    child: Image.asset('assets/images/dice$onjak.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// UI-User Interface
// UX-User experience