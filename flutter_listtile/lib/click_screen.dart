import 'package:flutter/material.dart';

class ClickScreen extends StatelessWidget {
  const ClickScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('이동된 화면')),
      body: Column(
        children: [
          Text('클릭하여 이동'),
        ],
      ),
    );
  }
}
