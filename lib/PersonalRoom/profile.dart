import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 4;
  static const double size = 12;
  static const Color _color = Color(0xFFBDBDBD);
  static const TextStyle _textStyle = TextStyle(fontSize: size);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE8EAF6),
        body: SafeArea(
            child: Column(
          children: [
            Avatar(),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                child: AboutPerson(),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: CardTextField())
          ],
        )),
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
        ));
  }
}

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png"),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Тартыгин Станислав Валерьевич"),
            Text("UniID: kuznech"),
          ],
        ),
      ),
    );
  }
}

double padding_between = 4;

class AboutPerson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(flex: 1, child: InfoField("Курс", "4")),
            Flexible(flex: 1, child: InfoField("Группа", "47"))
          ],
        ),
        InfoFacWork(
            "Кафедра программирования и экономической информатики"),
        InfoFacWork(
            "Направление Математическое обеспечение и администрирование информационных систем")
      ],
    );
  }
}

class InfoFacWork extends StatelessWidget {
  final String name;

  InfoFacWork(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding_between),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Center(
                child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.63,
                    child: Text(name))),
          ),
        ),
      ),
    );
  }
}

class InfoField extends StatelessWidget {
  final String name, num;

  InfoField(this.name, this.num);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding_between),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name),
                Text(num),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

double size = 100;

class CardTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(padding_between, padding_between,
                      padding_between, padding_between),
                  child: CardText("assets/correct.png", "Оценки")),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(padding_between, padding_between,
                      padding_between, padding_between),
                  child: CardText("assets/Vector.png", "Работы")),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(padding_between, padding_between,
                      padding_between, padding_between),
                  child: CardText("assets/doc.png", "Документы")),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(padding_between, padding_between,
                      padding_between, padding_between),
                  child: GestureDetector(
                      onTap: ()=>Navigator.pushNamed(context, "/profile/achievements"),
                      child: CardText("assets/achievements.png", "Достижения"))),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(padding_between, padding_between,
                      padding_between, padding_between),
                  child: CardText("assets/process.png", "Программа")),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(padding_between, padding_between,
                      padding_between, padding_between),
                  child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, "/profile/library"),
                      child: CardText("assets/library.png", "Библиотека"))),
            )
          ],
        )
      ],
    );
  }
}

class CardText extends StatelessWidget {
  final String _image, _name;

  CardText(this._image, this._name);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.white),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(_image),
            ),
            Text(_name)
          ]),
    );
  }
}
