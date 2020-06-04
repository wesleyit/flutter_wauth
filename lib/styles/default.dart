import 'package:flutter/material.dart';

const myPurple = Color(0xff440066);
const myYellow = Color(0xffFFEE00);
const myBlack = Color(0xff333333);
const myWhite = Color(0xffEEEEEE);

ThemeData defaultTheme() {
  return ThemeData(
    primaryColor: myPurple,
    accentColor: myYellow,
    hintColor: myBlack,
    dividerColor: myWhite,
    buttonColor: myPurple,
    scaffoldBackgroundColor: myWhite,
    canvasColor: myWhite,
    fontFamily: 'Montserrat',
    textTheme: TextTheme(

      headline1: TextStyle(
        fontSize: 50.0,
        fontWeight: FontWeight.w300
      ),

      headline2: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
        color: myYellow
      ),
      
      headline5: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w900,
        color: myPurple
      ),

      bodyText1: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: myBlack
      ),

    )
  );
}
