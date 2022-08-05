import 'package:carrot_market_ui_1/models/product.dart';
import 'package:carrot_market_ui_1/screens/components/board_card.dart';
import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen2 extends StatefulWidget {
  const MainScreen2({Key? key}) : super(key: key);

  @override
  State<MainScreen2> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen2> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          MaterialApp(
            theme: myAppTheme(),
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: Text('좌동'),
              ),
              body: ListView(
                children: List.generate(
                  productList.length,
                  (index) => BoardCard(product: productList[index]),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.red[100],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            label: '채팅',
            icon: Icon(CupertinoIcons.chat_bubble),
          ),
        ],
      ),
    );
  }
}
