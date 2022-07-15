import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'stateful sample',
      home: DayAndNight(),
    );
  }
}

class DayAndNight extends StatelessWidget {
  const DayAndNight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Today()),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.redAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  String changeValue = '';

  void changeText() {
    // 메소드만 실행하면 동작하지 않는다. setState() 호출
    setState(() {
      changeValue = changeValue == '밤' ? '낮' : '밤';
    });
  }

  // 한번만 호출 되는 메소드
  @override
  void initState() {
    changeValue = '낮';
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeText();
      },
      child: Container(
        height: 400,
        width: double.infinity,
        child: Text(changeValue),
      ),
    );
  }
}
