import 'package:flutter/material.dart';
import 'package:flutter_recipe_1/pages/recipe_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 표시 제거
      theme: ThemeData(fontFamily: "PatuaOne"), // 전체 폰트를 변경한 것
      title: 'MaterialApp test',
      home: RecipePage(),
    );
  }
}
