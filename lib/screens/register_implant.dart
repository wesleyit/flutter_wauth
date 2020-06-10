import 'package:flutter/material.dart';
import 'package:wauth/components/storage.dart';
import 'package:wauth/components/wauth_components.dart';
import 'package:nfc_manager/nfc_manager.dart';

class RegisterImplantScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegisterImplantState();
}

class RegisterImplantState extends State<RegisterImplantScreen> {
  String implantPIN = '';
  String implantName = '';
  String readUID = '';
  Storage db = Storage('devStorage.db');

  String toHex(int num) {
    return num.toRadixString(16).padLeft(2, '0').toUpperCase();
  }

  void readKey(BuildContext context) {
    NfcManager.instance.startTagSession(onDiscovered: (NfcTag tag) async {
      Ndef ndef = Ndef.fromTag(tag);
      NdefMessage cachedMessage = ndef.cachedMessage;
      print(cachedMessage);
      setState(() {
        readUID = tag.data['id'].map((num) => toHex(num)).toList().join(':');
        db.write('profile', implantName);
        db.write('UID', readUID);
        if (readUID.length > 4) {
          Navigator.of(context).pushNamed('/AccountLists');
        }
      });
      NfcManager.instance.stopSession();
    });
  }

  @override
  Widget build(BuildContext context) {
    NfcManager.instance
        .isAvailable()
        .then((value) => print('NFC is present: $value'));
    var t = Theme.of(context);
    return WScreen(
        title: 'Register your implant',
        child: Column(children: <Widget>[
          Image.asset('assets/images/padlock_01.png'),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30.0),
                    TextField(
                        onChanged: (value) =>
                            setState(() => implantName = value),
                        style: t.textTheme.bodyText1,
                        decoration: InputDecoration(hintText: 'Implant name')),
                    SizedBox(height: 30.0),
                    TextField(
                        onChanged: (value) =>
                            setState(() => implantPIN = value),
                        keyboardType: TextInputType.number,
                        style: t.textTheme.bodyText1,
                        decoration: InputDecoration(hintText: 'PIN (4 digits)'),
                        obscureText: true),
                    SizedBox(height: 40.0),
                    Text(readUID, style: t.textTheme.bodyText1),
                    SizedBox(height: 80.0),
                    WButton(
                        title: 'Scan',
                        iconData: Icons.wifi,
                        callback: () => readKey(context)),
                    Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom))
                  ])),
        ]));
  }
}
