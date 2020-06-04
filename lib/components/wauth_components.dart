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
  final Widget floatingButton;

  const WScreen({@required this.title, @required this.child, this.floatingButton});

  @override
  Widget build(context) {
    var t = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(title, style: t.textTheme.headline2)),
      body: SingleChildScrollView(
          child: DefaultTextStyle(style: t.textTheme.bodyText1, child: child)),
      floatingActionButton: floatingButton ?? Container(),
    );
  }
}

class WCardofList extends StatelessWidget {
  final String title;
  final String description;
  final IconData iconData;
  final Function callback;
  WCardofList({
    @required this.title,
    @required this.description,
    @required this.iconData,
    @required this.callback,
  });
  @override
  Widget build(context) {
    var t = Theme.of(context);
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            onTap: callback,
            leading: Icon(
              iconData,
              size: 40,
              color: myPurple,
            ),
            title: Text('  ' + title, style: t.textTheme.headline5),
            subtitle: Text('   ' + description, style: t.textTheme.bodyText1),
          ),
        ],
      ),
    );
  }
}
