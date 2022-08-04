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
        appBar: AppBar(title: Text('Flexible Test')),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.green,
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
