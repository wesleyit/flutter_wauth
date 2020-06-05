import 'package:flutter/material.dart';

const d_purple = Color(0xff500055);
const l_purple = Color(0xff600066);
const d_gray = Color(0xff303033);
const l_gray = Color(0xffDADADD);
const d_white = Color(0xffFAFAFF);

ThemeData defaultTheme() {
  return ThemeData(
      primaryColor: d_purple,
      accentColor: l_gray,
      hintColor: d_gray,
      dividerColor: l_gray,
      buttonColor: d_purple,
      scaffoldBackgroundColor: d_white,
      canvasColor: l_gray,
      fontFamily: 'AmazonEmber',
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w300),
        headline2: TextStyle(
            fontSize: 24.0, fontWeight: FontWeight.w500, color: l_gray),
        headline5: TextStyle(
            fontSize: 22.0, fontWeight: FontWeight.w900, color: d_gray),
        bodyText1: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.w500, color: d_gray),
      ));
}
