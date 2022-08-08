import 'package:flutter/cupertino.dart';

class Chat {
  final String content;
  final String name;
  final String imageUrl;
  final String contentImageUrl;
  final String address;
  final String time;

  Chat(
      {required this.content,
      required this.name,
      required this.imageUrl,
      required this.contentImageUrl,
      required this.address,
      required this.time});
}

// 샘플 데이터
final _urlPrefix = 'https://placeimg.com/200/100/';

List<Chat> chatData = [
  Chat(
      content: 'developer님. 근처에 다양한 물품들이 아주 많습니다.',
      name: '당근이',
      imageUrl: '${_urlPrefix}people',
      contentImageUrl: 'no',
      address: '대부동',
      time: '1일전'),
  Chat(
      content: '안녕하세요',
      name: 'Flutter',
      imageUrl: '${_urlPrefix}cat',
      contentImageUrl: '${_urlPrefix}cat',
      address: '중동',
      time: '2일전'),
];
