import 'package:flutter/material.dart';
import 'package:flutter_app/PersonalRoom/achievements.dart';
import 'package:flutter_app/PersonalRoom/library.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/qr_camera.dart';
import 'package:flutter/services.dart';

import 'PersonalRoom/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => Login(),
        '/profile': (context) => Profile(),
        '/profile/library': (context) => Library(),
        '/profile/achievements': (context) => Achievements(),
        '/camera': (context) => QRCamera()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
