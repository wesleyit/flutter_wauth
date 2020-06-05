import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wauth/components/wauth_components.dart';

class AccountTOTPScreen extends StatelessWidget {
  @override
  Widget build(context) {
    // var t = Theme.of(context);
    return WScreen(
        title: 'Account TOTP:',
        child: WCardofList(
          callback: () {},
          description: '998-876',
          title: 'Amazon Web Services',
          iconData: FontAwesomeIcons.aws,
        ));
  }
}
