import 'package:flutter/material.dart';

class BasicText extends StatelessWidget {
  const BasicText({
    Key? key,
    required String name,
  }) : _name = name, super(key: key);

  final String _name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Text(
            'hello, $_name! How are you?dddddddddddddddddddddddddddddddddddddddddddd',
            textAlign: TextAlign.center,  // 움직일 공간이 있어야 적용됨
            overflow: TextOverflow.ellipsis,  // 문자열 많은것 ... 처리 
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Text.rich( // 텍스트 마다 개별 디자인 효과를 줄수 있다. 
          TextSpan(
            text: 'Hello', // 기본 텍스트 스타일
            children: [
              TextSpan(
                text: ' beautiful', 
                style: TextStyle(
                  fontStyle: FontStyle.italic),
              ),
              TextSpan(
                text: ' world', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
            ]
          )
        ),
      ],
    );
  }
}
