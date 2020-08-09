import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0091EA),
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
                      hintStyle: TextStyle(fontSize: 20.0, color: Colors.amber),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrangeAccent,
                          ),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0))),
                      labelText: 'Логин',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0)),
                          borderSide: BorderSide(
                            color: Colors.deepOrangeAccent,
                          )),
                      labelText: 'Пароль',
                    ),
                  ),
                ),
                Row(children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                            context, "/profile", (route) => false),
                        //TODO :функция проверки входа и правильности данных
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
                      onTap: () => Navigator.pushNamed(context, "/camera"))
                ])
              ],
            ),
          ),
        ));
  }
}
