import 'package:flutter/material.dart';
import 'package:wauth/styles/default.dart';
import 'package:wauth/routes.dart';

void main() => runApp(WAuthApp());

class WAuthApp extends StatelessWidget {
  @override
  Widget build(context) => Directionality(
      textDirection: TextDirection.ltr,
      child: MaterialApp(
          title: 'wauthApp',
          theme: defaultTheme(),
          initialRoute: '/',
          routes: routes));
}
