import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/PersonalRoom/profile.dart';

class Achievements extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AchievementsState();
  }
}

class _AchievementsState extends State<Achievements> {
  int _selectedIndex = 4;
  static const double size = 12;
  static const Color _color = Color(0xFFBDBDBD);
  static const TextStyle _textStyle = TextStyle(fontSize: size);
  Widget body=Profile();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch(index){
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
        case 3:
          break;
        case 4:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFE8EAF6),
        elevation: 0,
        title: Text("Достижения"),
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
      ),
      body: Padding(
          padding: EdgeInsets.all(3), child: Container(child: ListDiploma())),
      backgroundColor: Color(0XFFE8EAF6),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Настройки', style: _textStyle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.toc),
            title: Text('Тесты', style: _textStyle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Сообщения', style: _textStyle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            title: Text('Расписание', style: _textStyle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Профиль', style: _textStyle),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF0091EA),
        unselectedItemColor: _color,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}

class ListDiploma extends StatelessWidget {
  List<Diploma> _list = [
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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        for (int i = 0; i < (_list.length / 3).ceil(); i++)
          Row(children: [
            for (int j = i * 3, p = 0; j < _list.length && p < 3; j++, p++)
              Expanded(
                  flex: 1,
                  child: Padding(padding: EdgeInsets.all(5), child: _list[j]))
          ])
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _list != null ? create() : Text("Нет достижений");
  }
}

double size = 110;

class Diploma extends StatelessWidget {
  String _image;

  Diploma(this._image);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 3,
                offset: Offset(0, 0),
              ),
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          child: Image.network(
            _image,
            width: size,
            height: size,
            fit: BoxFit.cover,
          ),
        ));
  }
}
