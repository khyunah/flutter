import 'package:flutter/material.dart';

import 'components/basic_text.dart';

void main() {
  runApp(const MyApp());
}

// 기본 위젯
// TextWidget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // stateless 위젯은 보통 변수를 쓸때 final을 붙인다. 
  final String _name = '홍길동';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea( // 디바이스의 최상단부분 아래로 적용시켜준다. 
          child: Center(
            child: Stack(// 겹치는 것 만들때
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
       ),
      ),
    );
  }
}

class BasicRow extends StatelessWidget {
  const BasicRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: const FlutterLogo()),
        Expanded(
          child: Text("Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.")
        ),
        Expanded(child: const Icon(Icons.sentiment_very_satisfied)),
      ],
    );
  }
}

