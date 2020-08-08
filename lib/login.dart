import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: const BorderRadius.all(const Radius.circular(10.0))),
                  labelText: 'Логин',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: const BorderRadius.all(const Radius.circular(10.0))),
                  labelText: 'Пароль',
                ),
              ),
            ),
            Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 10.0),
                  height: 48.0,
                  child: RaisedButton(
                    //TODO :кнопка на всю высоту сделано коряво
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () =>
                      Navigator.pushNamedAndRemoveUntil(
                          context,
                          "/home",
                          (route) =>
                              false), //TODO :функция проверки входа и правильности данных
                    child: Text("Войти"),
                  ),
                ),
              ),
              GestureDetector(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: AssetImage('assets/qr_code.png'),
                  ),
                ),
                onTap: ()=>Navigator.pushNamed(context, "/camera"),//TODO :открытие активности с камерой
              )
            ])
          ],
        ),
      ),
    ));
  }
}
