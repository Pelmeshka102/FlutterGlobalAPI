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
            Text("Логин"),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Text("Пароль"),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
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
                    //TODO :кнопка на всю высоту

                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context,
                          "/home",
                          (route) =>
                              false); //TODO :функция проверки входа и правильности данных
                    },
                    child: Text("Войти"),
                  ),
                ),
              ),
              Image(
                image: AssetImage('assets/qr_code.png'),
              )
            ])
          ],
        ),
      ),
    ));
  }
}
