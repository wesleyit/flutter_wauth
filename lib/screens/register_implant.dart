import 'package:flutter/material.dart';
import 'package:wauth/styles/default.dart';

class RegisterImplantScreen extends StatelessWidget {
  @override
  Widget build(context) {
    var t = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
            title: Text('Register your implant', style: t.textTheme.headline2)),
        body: SingleChildScrollView(
          child: DefaultTextStyle(
              style: t.textTheme.bodyText1,
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/images/padlock.png'),
                  SizedBox(height: 30.0),
                  TextField(
                      style: t.textTheme.bodyText1,
                      decoration: InputDecoration(hintText: 'Implant name')),
                  SizedBox(height: 30.0),
                  TextField(
                      style: t.textTheme.bodyText1,
                      decoration: InputDecoration(hintText: 'PIN (4 digits)'),
                      obscureText: true),
                  SizedBox(height: 45.0),
                  RaisedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.wifi,
                          color: myYellow,
                        ),
                        Text('  Scan!', style: t.textTheme.headline2)
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom))
                ],
              ))),
        ));
  }
}
