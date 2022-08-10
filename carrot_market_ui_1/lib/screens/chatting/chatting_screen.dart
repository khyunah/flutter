import 'package:carrot_market_ui_1/models/chat.dart';
import 'package:carrot_market_ui_1/models/chat_message.dart';
import 'package:carrot_market_ui_1/screens/chatting/components/chat_container.dart';
import 'package:carrot_market_ui_1/screens/components/app_bar_preferred_size.dart';
import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key, required this.chatData}) : super(key: key);

  final List<Chat> chatData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅'),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }
}
