import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _textController = TextEditingController();
  var result = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('정수, 소수 판별하기'),
        ),
        body: Column(
          children: [
            SizedBox(height: 100),
            Text(
              '숫자를 입력해 주세요.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: _textController,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      result = _checkNumber();
                    });
                  },
                  child: Text('확인'),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              '결과 : ${result}',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _checkNumber() {
    var number = _textController.text;
    var number2 = num.parse(number);
    return number2.runtimeType == double ? '소수' : '정수';
  }
}
