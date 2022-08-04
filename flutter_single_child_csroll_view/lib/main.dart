import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('SingleChildScrollView Test')),
        body: ListView(
          children: [
            Container(height: 200, color: Colors.yellow),
            Container(height: 100, color: Color.fromARGB(255, 190, 178, 69)),
            Container(height: 150, color: Color.fromARGB(255, 207, 187, 0)),
            Container(height: 300, color: Color.fromARGB(255, 233, 225, 151)),
            Container(height: 200, color: Color.fromARGB(255, 231, 221, 130)),
          ],
        ),
      ),
    );
  }
}
