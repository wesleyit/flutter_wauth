import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wauth/components/wauth_components.dart';

class AccountDetailsScreen extends StatelessWidget {
  @override
  Widget build(context) {
    var t = Theme.of(context);
    return WScreen(
        title: 'Account Details',
        child: WCardofList(
          title: 'Amazon Web Services',
          description: 'john.doe@mail.com\n   TOTP://hmac-22309-998989',
          iconData: FontAwesomeIcons.aws,
          callback: () {},
        ));
  }
}
