import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle h4({Color mColor = Colors.black}) { // 사용시점에 값이 없을때 기본값은 블랙
  return TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle h5({Color mColor = Colors.black}) { // 사용시점에 값이 없을때 기본값은 블랙
  return TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle subTitle1({Color mColor = Colors.black}) { // 사용시점에 값이 없을때 기본값은 블랙
  return TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle subTitle2({Color mColor = Colors.black}) { // 사용시점에 값이 없을때 기본값은 블랙
  return TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle overLine({Color mColor = Colors.black}) { // 사용시점에 값이 없을때 기본값은 블랙
  return TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle body1({Color mColor = Colors.black}) { // 사용시점에 값이 없을때 기본값은 블랙
  return TextStyle(fontSize: 16, color: mColor);
}
