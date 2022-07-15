import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOW CENTER'),
        centerTitle: true,
      ),
      // 화면 정가운데 배치 공식 
      // 기본 1. 
      // 1. Center 위젯은 가로축으로 가운데 정렬이다. 
      // 2. 세로축으로 가운데 정렬은 Column의 속성 mainAxisAlignment: MainAxisAlignment.center
      // 3. Center위젯 + mainAxisAlignment: MainAxisAlignment.center
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.blue[100],
              width: 300,
              height: 200,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 0, 0),
                child: Text(
                  'Hello', 
                  style: TextStyle(backgroundColor: Colors.green),
                ),
              )
            ),
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}
