import 'package:flutter/material.dart';
import 'package:flutter_app/PersonalRoom/achievements.dart';
import 'package:flutter_app/PersonalRoom/library.dart';
import 'package:flutter_app/login.dart';
import 'file:///C:/Users/Exlibeard/AndroidStudioProjects/flutter_app/lib/PersonalRoom/profile.dart';
import 'package:flutter_app/qr_camera.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays ([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
