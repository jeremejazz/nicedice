import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  (int, int) roll() {
    return (Random().nextInt(6) + 1, Random().nextInt(6) + 1);
  }

  void rollDice() {
    setState(() {
      var (left, right) = roll();
      leftDiceNumber = left;
      rightDiceNumber = right;
    });
  }

  @override
  void initState() {
    rollDice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          splashFactory: NoSplash.splashFactory,
                        ),
                        onPressed: () {
                          setState(() {
                            leftDiceNumber = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset(
                            'assets/images/dice/dice$leftDiceNumber.png'))),
                Expanded(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          splashFactory: NoSplash.splashFactory,
                        ),
                        onPressed: () {
                          setState(() {
                            rightDiceNumber = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset(
                            'assets/images/dice/dice$rightDiceNumber.png')))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: rollDice,
                  child: Text("Roll"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
