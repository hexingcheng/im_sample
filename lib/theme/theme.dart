import 'package:flutter/material.dart';

class OnlyliveTheme {
  static const appbarTitleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Color(0xff484848),
  );

  final defaultTheme = ThemeData(
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      subtitle1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      bodyText1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      bodyText2: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

class OnlyliveColor {
  static const black = Color(0xff484848);
  static const darkPurple = Color(0xff5C7498);
  static const purple = Color(0xffA3B7FF);
  static const lightPurple = Color(0xffD2DCFF);
  static const paleGrey = Color(0xffECF3FC);
  static const grey = Color(0xffA2ACBB);
  static const gradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xff8EC5FC),
      Color(0xffE0C3FC),
    ],
  );
  static const shadowColor = Color(0xffcccccc);
}
