import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ballpage(),
    );
  }
}
  class Ballpage extends StatelessWidget {
  const Ballpage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: Colors.blue[800],
  appBar: AppBar(
  backgroundColor: Colors.teal[400],
  title: const Text(
  'Ask Me Anything',
  style: TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w900,
  wordSpacing: 5,
  letterSpacing: 3,
  ),
  ),
  ),
    body: const Ball(),
  );
  }
  }

  class Ball extends StatefulWidget {
  const Ball({super.key});



  @override
  State<Ball> createState() => _BallState();
  }

  class _BallState extends State<Ball> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
  return Padding(
  padding: const EdgeInsets.all(100.0),
  child: Center(
  child: TextButton(
  onPressed: () {
  setState(() {
  ballnumber = Random().nextInt(5) + 1;
  });
  },
  child: Image.asset('images/ball$ballnumber.png'),
  ),
  ),
  );
  }
  }
