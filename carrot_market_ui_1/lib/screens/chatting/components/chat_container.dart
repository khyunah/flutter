import 'package:carrot_market_ui_1/models/chat_message.dart';
import 'package:carrot_market_ui_1/screens/components/image_container.dart';
import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/material.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({Key? key, required this.chatMessage}) : super(key: key);

  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      height: 100.0,
      child: Row(
        children: [
          ImageContainer(
            borderRadius: 25,
            imageUrl: chatMessage.profileImage,
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text.rich(
                  // 다른 모양의 텍스트를 쓸수 있다.
                  TextSpan(
                    children: [
                      TextSpan(
                        text: chatMessage.sender,
                        style: textTheme().bodyText1,
                      ),
                      TextSpan(text: chatMessage.location),
                      TextSpan(text: '.. ${chatMessage.sendDate}'),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  chatMessage.message,
                  style: textTheme().bodyText1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
              ],
            ),
          ),
          Visibility(
            visible: chatMessage.imageUri != null,
            child: ImageContainer(
              borderRadius: 8,
              width: 50,
              height: 50,
              imageUrl: chatMessage.imageUri ?? '',
            ),
          ),
        ],
      ),
    );
  }
}
