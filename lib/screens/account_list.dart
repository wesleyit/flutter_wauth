import 'package:flutter/material.dart';
import 'package:wauth/components/wauth_components.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wauth/styles/default.dart';

class AccountListScreen extends StatelessWidget {
  @override
  Widget build(context) {
    // var t = Theme.of(context);
    return WScreen(
        title: 'Accounts',
        child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              WCardofList(
                title: 'Amazon Web Services',
                description: 'john.doe@mail.com',
                iconData: FontAwesomeIcons.aws,
                callback: () {},
              ),
              WCardofList(
                title: 'Amazon.com',
                description: 'john.doe@mail.com',
                iconData: FontAwesomeIcons.amazon,
                callback: () {},
              ),
              WCardofList(
                title: 'Facebook',
                description: 'john.doe@mail.com',
                iconData: FontAwesomeIcons.facebook,
                callback: () {},
              ),
              WCardofList(
                title: 'Google Account',
                description: 'john.doe@gmail.com',
                iconData: FontAwesomeIcons.google,
                callback: () {},
              ),
              WCardofList(
                title: 'Work Mail',
                description: 'john.doe@work.acme.inc',
                iconData: Icons.business,
                callback: () {},
              ),
            ]),
        floatingButton: WFloatingButton(
          iconData: Icons.add,
          callback: () {
            Navigator.of(context).pushNamed('/QRCode');
          },
        ));
  }
}
