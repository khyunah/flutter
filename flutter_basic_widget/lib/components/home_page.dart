import 'package:flutter/material.dart';

// 상태가 없는 stateless 위젯을 사용했다

// stateful 위젯 만들어보기
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 변수 선언 : 상태를 저장할 수 있는 변수를 선언
  int _counter = 0;

  // 메서드 선언 ( 동작 )
  void _increment() {
    // 반드시 setState() 호출해야 하고 그 안에 동작 정의해야 함.
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ElevatedButton(
            onPressed: _increment, 
            child: Text('increment'),
          ),
          SizedBox(width: 16,),
          Text('Count : $_counter'),
        ],
      ),
    );
  }
}


