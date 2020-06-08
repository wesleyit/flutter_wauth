import 'package:flutter/material.dart';
import 'dart:async';
import 'package:wauth/components/storage.dart';

class SplashScreen extends StatelessWidget {
  final Storage db = Storage('devStorage.db');

  @override
  Widget build(context) {
    Timer(Duration(seconds: 5), () async {
      try {
        String profile = this.db.read('profile');
        if (profile == null){ throw('Profile null'); }
        print('Profile found! Name: $profile.');
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
