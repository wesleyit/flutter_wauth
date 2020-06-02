import 'package:flutter/material.dart';

ThemeData defaultTheme() {
  return ThemeData(
    primaryColor: Color(0xff440066),
    accentColor: Color(0xffFFEE00),
    hintColor: Color(0xff333333),
    dividerColor: Color(0xffEEEEEE),
    buttonColor: Color(0xff440066),
    scaffoldBackgroundColor: Color(0xffEEEEEE),
    canvasColor: Color(0xffEEEEEE),
    fontFamily: 'Montserrat',
    textTheme: TextTheme(

      headline1: TextStyle(
        fontSize: 50.0,
        fontWeight: FontWeight.w300
      ),

      headline2: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
        color: Color(0xffFFEE00)
      ),

      bodyText1: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500
      ),

    )
  );
}
