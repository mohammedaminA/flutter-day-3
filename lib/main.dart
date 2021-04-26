import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: BallPage2(),
    );
  }
}

class BallPage2 extends StatefulWidget {
  @override
  _BallPage2State createState() => _BallPage2State();
}

class _BallPage2State extends State<BallPage2> {
  int number = 1;
  @override
  void predict() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FlatButton(
      onPressed: () {
        predict();
      },
      child: Image.asset('images/ball$number.png'),
        ),
      ),
    );
  }
}
