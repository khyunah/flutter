import 'dart:developer';

import 'package:flutter/material.dart';

class TimeLineItem {
  final String category;
  final String address;
  final int checkCount;
  final String profileImageUrl;
  final String time;
  final String content;
  final String contentImageUrl;

  TimeLineItem(
      {required this.category,
      required this.address,
      required this.checkCount,
      required this.profileImageUrl,
      required this.time,
      required this.content,
      required this.contentImageUrl});
}

final String _urlPrefix = 'https://placeimg.com/200/100/';

// 샘플 데이터
List<TimeLineItem> timeLineItemList = [
  TimeLineItem(
      category: '우리동네질문',
      address: '좌동',
      checkCount: 3,
      profileImageUrl: '${_urlPrefix}cat',
      time: '3시간전',
      content:
          '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요? 내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
      contentImageUrl: '${_urlPrefix}dog'),
  TimeLineItem(
      category: '우리동네소식',
      address: '우동',
      checkCount: 1,
      profileImageUrl: '${_urlPrefix}sky',
      time: '1일전',
      content: '이명 치료 잘 아시는 분 있나요?',
      contentImageUrl: '${_urlPrefix}sea'),
];
