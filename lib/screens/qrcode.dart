import 'package:flutter/material.dart';
import 'package:wauth/components/wauth_components.dart';


class QRCodeScreen extends StatelessWidget {
  @override
  Widget build(context) =>
      WScreen(
        title: 'Scan the QRCode', 
        child: Text('Imagine a QR Code here.'),
        floatingButton: WFloatingButton(
          iconData: Icons.add,
          callback: () {
            Navigator.of(context).pushNamed('/QRCode');
          },
        ));
}
