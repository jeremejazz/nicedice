import 'package:flutter/material.dart';
import 'package:nicedice/src/pages/dice_page.dart';

class NiceDice extends StatelessWidget {
  const NiceDice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Nice Dice"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    );
  }
}
