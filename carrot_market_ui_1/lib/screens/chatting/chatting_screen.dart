import 'package:carrot_market_ui_1/models/chat.dart';
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            color: Colors.grey,
            thickness: 0.5,
            height: 0.5,
          ),
        ),
      ),
      body: Column(
          children: List.generate(
              chatData.length, (index) => _buildChatItem(chatData[index]))),
    );
  }

  Widget _buildChatItem(Chat chat) {
    return Card(
      margin: const EdgeInsets.only(bottom: 5),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SizedBox(
              height: 45,
              width: 45,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22.5),
                child: Image.network(chat.imageUrl, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        overflow: TextOverflow.ellipsis,
                        chat.name,
                        style: textTheme().subtitle1,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '${chat.address} • ${chat.time}',
                        style: textTheme().subtitle2,
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      chat.content,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            if (chat.contentImageUrl.compareTo('no') != 0)
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  chat.contentImageUrl,
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              )
          ],
        ),
      ),
    );
  }
}
