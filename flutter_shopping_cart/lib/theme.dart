import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart/constants.dart';

// 리턴타입 Widget보다 지정해주는게 좋다.
ThemeData theme(){
  return ThemeData(
    primarySwatch: kPrimaryColor,
    scaffoldBackgroundColor: kPrimaryColor,
  );
}
