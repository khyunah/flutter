import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/components/home_page.dart';

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
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // 디바이스의 최상단부분 아래로 적용시켜준다.
          child: HomePage(),
        ),
      ),
    );
  }
}

class BasicGesture extends StatelessWidget {
  const BasicGesture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // 이벤트 리스너
      onTap: () {
        print('눌러졌네요 ! !');
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
      ),
    );
  }
}

class BasicContainer extends StatelessWidget {
  const BasicContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // 박스 데코레이션 위젯으로 많이 사용한다.
        margin: const EdgeInsets.all(10.0),
        width: 48.0,
        height: 48.0,
        //color: Colors.amber[300], // []로 진하기 설정
        decoration: BoxDecoration(
            // 데코레이션 쓸때는 안에서 칼라를 지정할수 있으므로 밖에서 동시에 지정안됨
            color: Colors.amber[300],
            border: Border.all(color: Colors.red),
            // borderRadius: BorderRadius.all(Radius.circular(10.0),),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
      ),
    );
  }
}

class BasicStack extends StatelessWidget {
  const BasicStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // 겹치는 것 만들때
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
      children: const <Widget>[
        Expanded(child: FlutterLogo()),
        Expanded(
            child: Text(
                "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.")),
        Expanded(child: Icon(Icons.sentiment_very_satisfied)),
      ],
    );
  }
}
