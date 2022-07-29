import 'package:flutter/material.dart';

// 간격
const double gap_xl = 40;
const double gap_l = 30;
const double gap_m = 20;
const double gap_s = 10;
const double gap_xs = 5;

// 헤더 높이
const double header_height = 620;

// Media query 클래스를 사용해서 화면의 사이즈를 받을 수 있다.
double getBodyWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.7; // 생성될때 사이즈의 가로 크기를 가져온다. / 화면의 70% 정도 
}
