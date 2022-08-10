import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'animation2',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('toggle button test1'),
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 400),
              curve: Curves.bounceIn,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
            ),
            Container(
              child: AnimatedCrossFade(
                  firstChild: IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.add),
                  ),
                  secondChild: IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.back)),
                  crossFadeState: crossFadeState,
                  duration: duration),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var isOpen = true;

  _toggleOpen() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('temp1'),
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              width: isOpen ? 240 : 48,
              height: 48,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.orange[100],
              ),
            ),
            Container(
              width: 40.0,
              margin: EdgeInsets.only(left: 4.0, top: 1.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: AnimatedCrossFade(
                firstChild: IconButton(
                  onPressed: () {
                    _toggleOpen();
                  },
                  icon: Icon(CupertinoIcons.arrow_turn_up_right),
                ),
                secondChild: IconButton(
                  onPressed: () {
                    _toggleOpen();
                  },
                  icon: Icon(CupertinoIcons.add_circled),
                ),
                crossFadeState: !isOpen
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 400),
              ),
            ),
            AnimatedOpacity(
              opacity: isOpen ? 1 : 0,
              duration: const Duration(milliseconds: 400),
              child: Container(
                padding: EdgeInsets.only(left: 44.0),
                width: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.heart),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.hand_thumbsdown),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.hand_thumbsup),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
