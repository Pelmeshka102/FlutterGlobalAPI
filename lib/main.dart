import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => Login(),
        '/home' : (context) => MyHomePage()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(

        ),
      ),
    );
  }
}