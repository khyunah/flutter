import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tap {
  final IconData icon;
  final String text;

  Tap(this.icon, this.text);
}

List<Tap> tabs = [
  Tap(FontAwesomeIcons.envelope, '메일'),
  Tap(FontAwesomeIcons.calendar, '캘린더'),
  Tap(FontAwesomeIcons.archway, '사람'),
  Tap(FontAwesomeIcons.gift, '선물하기'),
  Tap(FontAwesomeIcons.laugh, '이모티콘'),
  Tap(FontAwesomeIcons.addressBook, '쇼핑하기'),
  Tap(FontAwesomeIcons.addressCard, '스타일'),
];
