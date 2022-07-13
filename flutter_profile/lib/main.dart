import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_buttons.dart';
import 'package:flutter_profile/components/profile_count_info.dart';
import 'package:flutter_profile/components/profile_drawer.dart';
import 'package:flutter_profile/components/profile_header.dart';
import 'package:flutter_profile/components/profile_tab.dart';
import 'package:flutter_profile/theme.dart';

// 프로필 앱 만들기
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(), // 함수
      home: ProfilePage(), // 클래스
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildProfileAppBar(),
      body: Column(
        children: const <Widget>[
          SizedBox(height: 20),
          ProfileHeader(),
          SizedBox(height: 20),
          ProfileCountInfo(),
          SizedBox(height: 20),
          ProfileButtons(),
          SizedBox(height: 20),
          Expanded(child: ProfileTab()),
        ],
      ),
      endDrawer: ProfileDrawer(),
    );
  }
}

AppBar _buildProfileAppBar() {
  return AppBar(
    leading: Icon(Icons.arrow_back_ios), // leading : 왼쪽에 나오는 영역
    title: Text('Profile'),
    centerTitle: true,
  );
}
