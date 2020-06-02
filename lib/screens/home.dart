import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(context) {
    var t = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('This is the home', style: t.textTheme.headline2)),
        body: DefaultTextStyle(
            style: t.textTheme.bodyText1,
            child: Center(child: Text('Hello Flutter!'))));
  }
}
