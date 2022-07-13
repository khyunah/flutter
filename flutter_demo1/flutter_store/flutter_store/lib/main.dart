import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stl 엔터
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // 위젯을 리턴해주는 메소드
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // Column에 alt enter 한뒤 Wrap with widget 하면 감싸준다.
          children: [
            SizedBox(
              height: 50,
              child: Padding(
                // Row에 alt enter 한뒤 Wrap with padding 하면 감싸준다.
                padding: const EdgeInsets.all(8.0), // padding 값 숫자로 조정
                child: Row(
                  children: const [
                    Text(
                      "Woman",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(), // 공간을 자동으로 계산해서 분배해준다.
                    Text(
                      "Kids",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Shoes",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Bag",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Image.asset(
              "assets/bag.jpeg",
              fit: BoxFit.cover,
            )),
            const SizedBox(
              height: 2,
            ), // 공백주기 위함
            Expanded(
              child: Image.asset(
                "assets/cloth.jpeg",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
