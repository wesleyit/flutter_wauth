import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(context) {
    Timer(Duration(seconds: 3), () async {
      try {
        final directory = await getApplicationDocumentsDirectory();
        final file = File('${directory.path}/my_file.txt');
        String text = await file.readAsString();
        print('Profile found with: ' + text);
        Navigator.of(context).pushNamed('/AccountList');
      } catch (e) {
        print('Profile not found!');
        Navigator.of(context).pushNamed('/RegisterImplant');
      }
    });
    var t = Theme.of(context);
    return Scaffold(
        backgroundColor: t.primaryColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 100.0),
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/splash.png'),
              SizedBox(height: 100),
              Text(
                'W A U T H',
                style: t.textTheme.headline1.apply(color: t.accentColor),
              ),
            ],
          ),
        ));
  }
}
