import 'package:flutter/material.dart';
import 'package:flutter_login/pages/home_page.dart';
import 'package:flutter_login/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minimumSize: Size(400, 60), 
          ),
        ),
      ),
      initialRoute: "/login", // 첫화면 어디로 할지 지정
      routes: {
        // key 값 / 키값이 지정될때 컨텍스트 매개변수를 넘겨받는다.
        // 키값으로 요청이 오면 위젯을 반환한다. 
        "/login" : (context) => LoginPage(),
        "/home" :(context) => HomePage(),
      },
    );
  }
}
