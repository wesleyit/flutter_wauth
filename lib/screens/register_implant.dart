import 'package:flutter/material.dart';
import 'package:wauth/components/wauth_components.dart';

class RegisterImplantScreen extends StatelessWidget {
  @override
  Widget build(context) {
    var t = Theme.of(context);
    return WScreen(
        title: 'Register your implant',
        child: Column(children: <Widget>[
          Image.asset('assets/images/padlock.png'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30.0),
                TextField(
                    style: t.textTheme.bodyText1,
                    decoration: InputDecoration(hintText: 'Implant name')),
                SizedBox(height: 30.0),
                TextField(
                    keyboardType: TextInputType.number,
                    style: t.textTheme.bodyText1,
                    decoration: InputDecoration(hintText: 'PIN (4 digits)'),
                    obscureText: true),
                SizedBox(height: 80.0),
                WButton(
                    title: 'Scan',
                    iconData: Icons.wifi,
                    callback: () {
                      Navigator.of(context).pushNamed('/AccountList');
                    }),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ]
            )
          ),
        ]));
  }
}
