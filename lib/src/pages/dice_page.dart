
import 'package:flutter/cupertino.dart';

class DicePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

      return Row(
        children: [
          Image(image: AssetImage('assets/images/dice/dice1.png'), width: 100,)
        ],
      );

  }
}