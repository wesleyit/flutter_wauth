import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wauth/screens/splash.dart';
import 'package:wauth/screens/home.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (context) => SplashScreen(),
  '/home': (context) => HomeScreen(),
};
