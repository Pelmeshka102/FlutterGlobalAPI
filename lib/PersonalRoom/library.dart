import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE8EAF6),
      appBar: AppBar(
        backgroundColor: Color(0XFFE8EAF6),
        elevation: 0,
        title: Text("Библиотека"),
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
            icon: Icon(Icons.search,color: Colors.black,),
            onPressed: () {
              return null;
            },
          )
        ],
      ),
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: <Widget>[
            ScrollTags(),
            LibraryCardScroll(),
          ]),
      ),
      ),
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
          children: data.map((qoute) {
        return qoute;
      }).toList());
  }
}

class Tag extends StatefulWidget {
  String tag;

  Tag(this.tag);

  @override
  State<StatefulWidget> createState() => TagState(tag);
}

class TagState extends State<Tag> {
  double size_shadow = 1;
  bool touched = false;
  final String _tag;

  TagState(this._tag);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              spreadRadius: size_shadow,
              color: Colors.black.withOpacity(0.5),
              blurRadius: 5,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: Container(
            color: Colors.white,
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Center(child: Text(_tag))),
          ),
        ),
      ),
      onTap: () {
        //TODO нужно сделать радио кнопку по типу
        setState(() {
          touched =! touched;
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
            children: data.map((qoute) {
          return Padding(padding: EdgeInsets.all(15), child: Tag(qoute));
        }).toList()));
  }
}

class LibraryCard extends StatelessWidget {
  final String _url_img;
  final String _author;
  final String _title;
  final String _date;

  LibraryCard(this._url_img, this._title, this._author, this._date);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 7, //
                  offset: Offset(0.0, 7) // changes position of shadow
                  ),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    _url_img,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.63,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(child: Text(_title), padding: EdgeInsets.fromLTRB(10,0,10,0)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10,0,10,0),
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
          )),
    );
  }
}
