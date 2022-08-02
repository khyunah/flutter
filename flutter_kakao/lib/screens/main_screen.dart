import 'package:flutter/material.dart';
import 'package:flutter_kakao/screens/chat_screen.dart';
import 'package:flutter_kakao/screens/friend_screen.dart';
import 'package:flutter_kakao/screens/more_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // index 에 대한 관리가 필요하다.
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex, // 연결
        children: const [
          FriendScreen(),
          ChatScreen(),
          MoreScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.grey[100],
        onTap: (index) {
          print(index);
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: ''),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment), label: ''),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ellipsis), label: ''),
        ], // 기본적으로 5개 까지만 사용가능 ( 안드로이드, IOS도 마찬가지)
      ),
    );
  }
}
