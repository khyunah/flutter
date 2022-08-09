import 'package:flutter/material.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  bool _isClick = false;
  double _tabWidth = 200;
  double _baseWidth = 50;
  double _width = 50;
  double _height = 60;
  double _iconSize = 45;

  double opacityValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animatedContainer2'),
      ),
      body: InkWell(
        onTap: () {
          setState(() {
            _isClick = !_isClick;
            _isClick == true ? _width = _tabWidth : _width = _baseWidth;
            opacityValue == 1.0 ? opacityValue = 1.0 : opacityValue == 0.1;
          });
        },
        child: Stack(
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: BorderRadius.circular(50)),
              duration: const Duration(seconds: 1),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: (60 - 45) / 2, horizontal: (50 - 45) / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Icon(
                Icons.add,
                size: _iconSize,
                color: Colors.black54,
              ),
            ),
            if (_isClick) _addButtonBox(),
          ],
        ),
      ),
    );
  }

  Widget _addButtonBox() {
    return AnimatedContainer(
      width: _tabWidth,
      height: _height,
      duration: Duration(seconds: 1),
      child: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: AnimatedOpacity(
          duration: Duration(seconds: 2),
          opacity: opacityValue,
          child: Row(
            children: [
              Spacer(),
              Icon(
                Icons.access_alarms,
                size: 35,
                color: Color.fromARGB(221, 24, 24, 24),
              ),
              Spacer(),
              Icon(
                Icons.workspace_premium,
                size: 35,
                color: Color.fromARGB(221, 24, 24, 24),
              ),
              Spacer(),
              Icon(
                Icons.add_a_photo_outlined,
                size: 35,
                color: Color.fromARGB(221, 24, 24, 24),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
