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
  String text = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent[200],
          title: const Text('사용자에게 입력받기'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              '이름을 입력해 주세요.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _textController,
                onSubmitted: _submit,
              ),
            ),
            TextButton(
              onPressed: () {
                _submit(_textController.text);
              },
              child: Text('눌러요'),
            ),
            const SizedBox(height: 50),
            Text(
              text,
              style: TextStyle(color: Colors.amber, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }

  void _submit(String value) {
    setState(() {
      text = value;
      _textController.clear();
    });
  }
}
