// 플러터 작성 하기
// 1. import 하기 ( fm 하면 자동완성뜸)
// 구글에서 제공하는 material 프레임워크에있는 기본 위젯과 테마들을 사용하기 위해서 가져와야함
import 'package:flutter/material.dart';

// 2. 함수 만들기
// 메인함수 : 컴파일러에게 앱의 시작점을 알려준다.
// void : 메인함수 실행 완료시 아무 값도 리턴하지 않는다.
// runApp() : 주어진 인자값으로 들어오는 위젯을 루트 위젯으로 만들어준다.
//            위젯트리를 생성해준다.
// 플러터는, 다트는 문장의 끝은 항상 세미콜론; 으로 끝나야 한다.
void main() => runApp(MyApp());

// 람다식과 같은 것
// void main(List<String> args) {
//   runApp(app);
// }

// 3. 위젯 만들기
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // build 메서드
  // 플러터에서 제공하는 모든 위젯은 또 다른 위젯을 리턴하는 build 함수를 가지고 있다.
  // 플러터에서 함수와 메서드는 같은 것으로 보면 됨.
  @override
  Widget build(BuildContext context) {
    // 플러터에서 제공하는 material 디자인을 사용하는 위젯의 상위 위젯 ( container 개념 )
    return MaterialApp(
      title: 'my flutter app', // 앱을 설명하는 부분 문자열 '', "" 가능
      theme: ThemeData(
          primarySwatch: Colors.orange), // primarySwatch : 우리가 만들 앱에 사용하는 기본 색상들을 ( 기업 색깔 ) 설정한다.
      home: MyHomePage(), // 앱 처음 실행시 보여지는 화면
    );
  }
}

// 항상 stateless 위젯 , stateful 위젯을 사용할지 먼저 고민 해봐야 한다.
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold : 발판의 역할 
    // 앱을 빨리 만들 수 있도록 시각적 레이아웃을 구성해주는 발판 ( 가장 많이 사용함 )
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),  // MaterialApp 에서는 문자열 바로 사용가능 헀으나 다른 위젯에서는 Text위젯을 이용해야 한다. 
        centerTitle: true,  // title 가운데 정렬
      ),
      body: Center( // 정렬
        child: Column( // 모든 자식 위젯을 수직으로 배치하는 부모 개념 위젯
          children: [
            Container(
              color: Colors.red,
              height: 50,
              width: double.infinity, // 값으로는 디바이스마다 꽉채우기를 설정하기 애매함 그럴때 double.infinity 사용
              child: const Text('Hello 1', textAlign: TextAlign.center,),
            ),
            const Text('Hello 2', style: TextStyle(fontSize: 20),),
            const Text('Hello 3', style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
