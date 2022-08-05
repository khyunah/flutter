import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
  return TextTheme(
    headline1: GoogleFonts.openSans(
      fontSize: 18.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 16.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: GoogleFonts.openSans(
      fontSize: 16.0,
      color: Colors.black,
    ),
    bodyText2: GoogleFonts.openSans(
      fontSize: 12.0,
      color: Colors.grey,
    ),
    subtitle1: GoogleFonts.openSans(
      fontSize: 14.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    titleTextStyle: TextStyle(
        fontFamily: 'openSans',
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black),
  );
}

ThemeData myAppTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
  );
}
