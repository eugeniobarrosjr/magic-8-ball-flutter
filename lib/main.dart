import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Text('Ask me Anything'),
        ),
        backgroundColor: Colors.blue[400],
        body: MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  int _maxBallNumber = 5;

  void play() => setState(() => ballNumber = _generateRandomBallNumber());

  _generateRandomBallNumber() => Random().nextInt(_maxBallNumber) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () => play(),
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
