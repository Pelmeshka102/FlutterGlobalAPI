import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Components/AppBarWithBody.dart';
import 'package:flutter_app/Components/ConstValues.dart';

class Achievements extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AchievementsState();
  }
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return AppBarWithBody(title: "Достижения", content: ListDiploma());
  }
}

class ListDiploma extends StatelessWidget {
  final List<Diploma> _list = [
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
    Diploma(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
  ];

  Widget create() {
    return Container(
      padding: insets3,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          for (int i = 0; i < (_list.length / 3).ceil(); i++)
            Row(children: [
              for (int j = i * 3, p = 0; j < _list.length && p < 3; j++, p++)
                Expanded(
                    flex: 1, child: Padding(padding: insets5, child: _list[j]))
            ])
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (_list != null && _list.length != 0)
        ? create()
        : Text("Нет достижений");
  }
}

class Diploma extends StatelessWidget {
  final String _image;
  final double _size = 110;

  Diploma(this._image);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: radius25, boxShadow: <BoxShadow>[
          BoxShadow(
            color: shadow,
            blurRadius: 3,
            offset: offset_shadow,
          ),
        ]),
        child: ClipRRect(
          borderRadius: radius25,
          child: Image.network(
            _image,
            width: _size,
            height: _size,
            fit: BoxFit.cover,
          ),
        ));
  }
}
