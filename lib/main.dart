import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Ask me something and shake',
              style: TextStyle(color: Colors.grey[400]),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: MagicBall(),
      )),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  static int Valor = 1;

  @override
  Widget build(BuildContext context) {
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      setState(() {
        Valor = Random().nextInt(20) + 1;
        print(Valor);
      });
    });
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image.asset('Images/ball$Valor.png'),
          ),
        ],
      ),
    );
  }
}
