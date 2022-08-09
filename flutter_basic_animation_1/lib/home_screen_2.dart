import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.yellow;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8);
  double _top_margin = 100;
  double _left_margin = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animatedContainer'),
      ),
      body: AnimatedContainer(
        margin: EdgeInsets.only(top: _top_margin, left: _left_margin),
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: _borderRadiusGeometry,
        ),
        duration: const Duration(seconds: 3),
        curve: Curves.bounceIn,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            for (var i = 0; i < 4; i++) _setRandom();
          });
        },
        child: Icon(Icons.arrow_back_ios),
      ),
    );
  }

  void _setRandom() {
    final random = Random();
    _width = random.nextInt(300).toDouble();
    _height = random.nextInt(300).toDouble();
    _color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    _borderRadiusGeometry =
        BorderRadius.circular(random.nextInt(100).toDouble());

    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    _top_margin = random.nextInt((deviceHeight - _height).toInt()).toDouble();
    _left_margin = random.nextInt((deviceWidth - _width).toInt()).toDouble();
  }
}
