import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answer = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: const Text("Ask Me Anything"),
          centerTitle: true,
        ),
        body: Center(
          child: Expanded(
            child: TextButton(
              child: Image.asset('images/ball$answer.png'),
              onPressed: () => {
                setState(() => {answer = Random().nextInt(5) + 1})
              },
            ),
          ),
        ),
      ),
    );
  }
}
