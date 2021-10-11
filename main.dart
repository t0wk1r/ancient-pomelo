import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final Random _random = new Random();
  Color _color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new GestureDetector(
          onTap: () {
            // Change the color of the container beneath
            setState(() {
              _color = new Color.fromRGBO(_random.nextInt(256),
                  _random.nextInt(256), _random.nextInt(256), 1.0);
            });
          },
          child: new Container(
            width: 80.0,
            height: 80.0,
            margin: new EdgeInsets.all(10.0),
            color: _color,
          ),
        ),
      ),
    );
  }
}
