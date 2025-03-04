import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/dice/dice1.png'))),

          Expanded(
              child: TextButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/dice/dice2.png')))
          // Image(image: AssetImage('assets/images/dice/dice1.png'), width: 100,)
        ],
      ),
    );
  }
}
