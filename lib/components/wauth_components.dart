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
      splashColor: l_gray,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: l_gray,
          ),
          Text('  ' + title, style: t.textTheme.headline2)
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
      color: Color(0xffFEFEFF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(20.0),
            onTap: callback,
            leading: Icon(
              iconData,
              size: 40,
              color: t.primaryColor
            ),
            title: Text('  ' + title, style: t.textTheme.headline5),
            subtitle: Text('   ' + description, style: t.textTheme.bodyText1),
          ),
        ],
      ),
    );
  }
}


class WFloatingButton extends StatelessWidget {
  final IconData iconData;
  final Function callback;
  WFloatingButton({
    @required this.iconData,
    @required this.callback,
  });
  @override
  Widget build(context) {
    return FloatingActionButton(
          child: Icon(iconData),
          backgroundColor: d_purple,
          foregroundColor: l_gray,
          onPressed: callback,
        );
  }
}
