import 'package:flutter/material.dart';
import 'package:wauth/components/wauth_components.dart';

class NFCUnlockScreen extends StatelessWidget {
  @override
  Widget build(context) {
    var t = Theme.of(context);
    return WScreen(
        title: 'NFC Unlock',
        child: Column(
          children: [
            Image.asset('assets/images/padlock_02.png'),
            SizedBox(
              height: 50.0,
            ),
            Text('Tap to Unlock', style: t.textTheme.headline1),
            SizedBox(
              height: 20.0,
            ),
            Text(
                'Your vault is locked. Tap your NFC chip to generate a password.',
                style: t.textTheme.bodyText1),
            SizedBox(
              height: 20.0,
            ),
            Icon(
              Icons.nfc,
              size: 120.0,
              color: t.primaryColor,
            ),
          ],
        ));
  }
}
