import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(EightBall());

class EightBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent.shade700,
          title: Text('Ask me everything'),
        ),
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          randomBallNumber();
        },
        child: Image(
          image: AssetImage('images/ball$ballNumber.png'),
        ),
      ),
    );
  }

  randomBallNumber() {
    setState(() {
      this.ballNumber = Random().nextInt(4) + 1;
    });
  }
}
