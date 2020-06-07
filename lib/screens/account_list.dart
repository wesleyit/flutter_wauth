import 'package:flutter/material.dart';
import 'package:wauth/components/wauth_components.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wauth/components/storage.dart';
import 'package:wauth/components/crypto.dart';

class AccountListScreen extends StatelessWidget {
  final Storage db = Storage('testStorage.db');
  final Crypto crypto = Crypto('1234PASSWORD1234');
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
                callback: () {
                  this.db.write('player', crypto.encrypt('amazon web services'));
                },
              ),
              WCardofList(
                title: 'Amazon.com',
                description: 'john.doe@mail.com',
                iconData: FontAwesomeIcons.amazon,
                callback: () {
                  this.db.write('player', 'amazon.com');
                },
              ),
              WCardofList(
                title: 'Facebook',
                description: 'john.doe@mail.com',
                iconData: FontAwesomeIcons.facebook,
                callback: () {
                  this.db.write('player', 'Facebook');
                },
              ),
              WCardofList(
                title: 'Google Account',
                description: 'john.doe@gmail.com',
                iconData: FontAwesomeIcons.google,
                callback: () {
                  this.db.write('player', 'google');
                },
              ),
              WCardofList(
                title: 'Work Mail',
                description: 'john.doe@work.acme.inc',
                iconData: Icons.business,
                callback: () {
                  print(this.db.read('player'));
                  print(crypto.decrypt(this.db.read('player')));
                },
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
