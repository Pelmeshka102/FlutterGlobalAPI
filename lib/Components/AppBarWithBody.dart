import 'package:flutter/material.dart';
import 'package:flutter_app/Components/ConstValues.dart';
import 'BottomNavBar.dart';

class AppBarWithBody extends StatelessWidget {
  final String title;
  final bool isNavBar;
  final bool isAppBar;
  final Widget content;
  AppBarWithBody({this.title,this.content,this.isNavBar=false,this.isAppBar=true});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: main_background,
      appBar: isAppBar?AppBar(
        backgroundColor: main_background,
        elevation: 0,
        title: Text(title),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              return null;
            },
          )
        ],
      ):null,
      bottomNavigationBar: isNavBar?BottomNavBar():null,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: content
        ),
      ),
    );
  }
}