import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wauth/screens/splash.dart';
import 'package:wauth/screens/register_implant.dart';
import 'package:wauth/screens/account_list.dart';
import 'package:wauth/screens/qrcode.dart';
import 'package:wauth/screens/test.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (context) => SplashScreen(),
  '/RegisterImplant': (context) => RegisterImplantScreen(),
  '/AccountList': (context) => AccountListScreen(),
  '/QRCode': (context) => QRCodeScreen(),
  '/Test': (context) => TestScreen(),
};
