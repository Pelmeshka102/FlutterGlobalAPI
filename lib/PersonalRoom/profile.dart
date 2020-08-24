import 'package:flutter/material.dart';
import 'package:flutter_app/Components/AppBarWithBody.dart';
import 'package:flutter_app/Components/ConstValues.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBarWithBody(
        isNavBar: true,
        isAppBar: false,
        content: Column(
          children: [
            Avatar(
                "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png",
                "Тартыгин Станислав Валерьевич",
                "UniID: kuznech"),
            AboutPerson(),
            CardTextFields()
          ],
        ));
  }
}

class Avatar extends StatelessWidget {
  final String url;
  final String name;
  final String id;

  Avatar(this.url, this.name, this.id);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: insets25,
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(url),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name),
          Text(id),
        ],
      ),
    );
  }
}

class AboutPerson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: insetsLR5,
      child: Column(
        children: [
          Row(
            children: [
              Flexible(flex: 1, child: InfoField("Курс", "4")),
              Flexible(flex: 1, child: InfoField("Группа", "47"))
            ],
          ),
          InfoFacWork("Кафедра программирования и экономической информатики"),
          InfoFacWork(
              "Направление Математическое обеспечение и администрирование информационных систем")
        ],
      ),
    );
  }
}

class InfoFacWork extends StatelessWidget {
  final String name;

  InfoFacWork(this.name);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius25,
      child: Container(
        margin: insets4,
        color: Colors.white,
        child: Center(
            child: Container(
                padding: insets5,
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(name))),
      ),
    );
  }
}

class InfoField extends StatelessWidget {
  final String name, num;

  InfoField(this.name, this.num);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius25,
      child: Container(
        margin: insets4,
        padding: insets25,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),
            Text(num),
          ],
        ),
      ),
    );
  }
}

class CardTextFields extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final List<CardText> _first_line = [
    CardText("assets/correct.png", "Оценки", null),
    CardText("assets/Vector.png", "Работы", null),
    CardText("assets/doc.png", "Документы", null)
  ];
  // ignore: non_constant_identifier_names
  final List<CardText> _second_line = [
    CardText("assets/achievements.png", "Достижения", "/profile/achievements"),
    CardText("assets/process.png", "Программа", null),
    CardText("assets/library.png", "Библиотека", "/profile/library")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: insetsLR5,
      child: Column(
        children: [
          OneLineButtonCard(_first_line),
          OneLineButtonCard(_second_line),
        ],
      ),
    );
  }
}

class OneLineButtonCard extends StatelessWidget {
  final List<CardText> _list;

  OneLineButtonCard(this._list);

  @override
  Widget build(context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _list.map((elem) {
          return Expanded(
              child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, elem._path),
            child: Container(padding: insets4, child: elem),
          ));
        }).toList());
  }
}

class CardText extends StatelessWidget {
  final String _image, _name, _path;

  CardText(this._image, this._name, this._path);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: card_size,
      height: card_size,
      decoration: BoxDecoration(borderRadius: radius25, color: Colors.white),
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
