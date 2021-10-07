import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: BallPage(),
  ));
}

//The Stateless Widget the provides me the background and appbar
class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ask me Anything',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        color: Colors.blue,
        child: const Ball(),
      ),
    );
  }
}

//The Stateful Widget that provides me the mutable images
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int indexNumber = 1;

  void changeIndexNumber() {
    setState(() {
      indexNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            changeIndexNumber();
          },
          child: Image.asset('images/ball$indexNumber.png'),
        ),
      ),
    );
  }
}
