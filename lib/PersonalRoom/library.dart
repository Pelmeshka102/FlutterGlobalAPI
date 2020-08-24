import 'package:flutter/material.dart';
import 'package:flutter_app/Components/AppBarWithBody.dart';
import 'package:flutter_app/Components/ConstValues.dart';

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBarWithBody(
      title: "Библиотека",
      content: Column(children: <Widget>[
        ScrollTags(),
        LibraryCardScroll(),
      ]),
    );
  }
}

class LibraryCardScroll extends StatelessWidget {
  final List<LibraryCard> data = [
    LibraryCard(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png",
        "Информатика для профессий и специальностей технического профиля",
        "Свириденко Ю.В.",
        "Год 1981"),
    LibraryCard(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png",
        "Информатика для профессий и специальностей технического профиля",
        "Свириденко Ю.В.",
        "Год 1981"),
    LibraryCard(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png",
        "Информатика для профессий и специальностей технического профиля",
        "Свириденко Ю.В.",
        "Год 1981"),
    LibraryCard(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png",
        "Информатика для профессий и специальностей технического профиля",
        "Свириденко Ю.В.",
        "Год 1981"),
    LibraryCard(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png",
        "Информатика для профессий и специальностей технического профиля",
        "Свириденко Ю.В.",
        "Год 1981"),
    LibraryCard(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png",
        "Информатика для профессий и специальностей технического профиля",
        "Свириденко Ю.В.",
        "Год 1981"),
    LibraryCard(
        "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png",
        "Информатика для профессий и специальностей технического профиля",
        "Свириденко Ю.В.",
        "Год 1981"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: data.map((quote) {
      return quote;
    }).toList());
  }
}

class Tag extends StatefulWidget {
  final String tag;

  Tag(this.tag);

  @override
  State<StatefulWidget> createState() => TagState(tag);
}

class TagState extends State<Tag> {
  // ignore: non_constant_identifier_names
  double size_shadow = 1;
  bool touched = false;
  final String _tag;

  TagState(this._tag);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: radius50,
          boxShadow: <BoxShadow>[
            BoxShadow(
              spreadRadius: size_shadow,
              color: shadow,
              blurRadius: 5,
              offset: offset_shadow,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: radius50,
          child: Container(
            color: Colors.white,
            child: Padding(padding: insets15, child: Center(child: Text(_tag))),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          touched = !touched;
          touched ? size_shadow = 3 : size_shadow = 1;
        });
      },
    );
  }
}

class ScrollTags extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScrollTagsState();
  }
}

class ScrollTagsState extends State<ScrollTags> {
  final List<String> data = [
    "ВСЕ",
    "#Худлит",
    "#Математика",
    "#Физика",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: data.map((quote) {
          return Padding(padding: insets15, child: Tag(quote));
        }).toList()));
  }
}

class LibraryCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String _url_img;
  final String _author;
  final String _title;
  final String _date;
  static const double card_size = 100;

  LibraryCard(this._url_img, this._title, this._author, this._date);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: insets10,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: shadow,
                spreadRadius: 0,
                blurRadius: 7, //
                offset: Offset(0.0, 7) // changes position of shadow
                ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: radius10,
          ),
          child: Padding(
            padding: insets10,
            child: Row(children: <Widget>[
              ClipRRect(
                borderRadius: radius10,
                child: Image.network(
                  _url_img,
                  fit: BoxFit.cover,
                  width: card_size,
                  height: card_size,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.63,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: Text(_title), margin: insetsLR10),
                    Container(
                      margin: insetsLR10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text(_author), Text(_date)],
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
