import 'package:flutter/material.dart';

class QRCamera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: GestureDetector(
                onTap: ()=>Navigator.pop(context),
                child: Icon(
                  Icons.clear,
                  color: Colors.black,
                  size: 35.0,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Наведите камеру на QR-код"),
                //TODO : сделать камеру
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.transparent,
                      child: Text("Загрузить QR из галереи"),
                      onPressed: () => null //TODO открытие галереи
                      ),
                ),
                GestureDetector(
                  child: Text("Войти с помощью логина"),
                  onTap: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
