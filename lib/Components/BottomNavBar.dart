import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageText(Icons.airport_shuttle,"Hello"),
          ImageText(Icons.airport_shuttle,"Hello"),
          ImageText(Icons.airport_shuttle,"Hello"),
          ImageText(Icons.airport_shuttle,"Hello"),
          ImageText(Icons.airport_shuttle,"Hello"),
        ],
      ),
    );
  }
}
class ImageText extends StatelessWidget{
  final IconData _icons;
  final String _text;
  ImageText(this._icons,this._text);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(_icons,size: 25,color: Colors.black),
        Text(_text)
      ],
    );
  }

}