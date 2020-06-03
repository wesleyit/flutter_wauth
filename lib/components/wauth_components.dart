import 'package:flutter/material.dart';
import 'package:wauth/styles/default.dart';

class WButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function callback;
  WButton({
    @required this.title,
    @required this.iconData,
    @required this.callback,
  });
  @override
  Widget build(context) {
    var t = Theme.of(context);
    return RaisedButton(
      onPressed: callback,
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      splashColor: myYellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: myYellow,
          ),
          Text(title, style: t.textTheme.headline2)
        ],
      ),
    );
  }
}

class WScreen extends StatelessWidget {
  final String title;
  final Widget child;

  const WScreen({@required this.title, @required this.child});

  @override
  Widget build(context) {
    var t = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          title: Text(title, style: t.textTheme.headline2)),
      body: SingleChildScrollView(
          child: DefaultTextStyle(
              style: t.textTheme.bodyText1, 
              child: Container(child: child)
          )
      ),
    );
  }
}
