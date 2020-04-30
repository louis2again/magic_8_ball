import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue.shade900,
          title:
              Text('Ask Me Anything', style: TextStyle(fontFamily: 'Pacifico')),
          centerTitle: true,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  void changeBallFace() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              changeBallFace();
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ],
    ));
  }
}
