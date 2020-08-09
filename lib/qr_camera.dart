import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

double fontSize = 20;

class QRCamera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0091EA),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Наведите камеру на QR-код",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Roboto",
                        fontSize: fontSize)),
              ),
              //TODO : сделать камеру
              CircularBorder(
                width: 5,
                size: 200,
                color: Colors.grey,
                icon: Icon(Icons.photo_camera, color: Colors.grey),
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(25),
                          child: Text("Загрузить QR из галереи",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Roboto",
                                  fontSize: fontSize)),
                        ),
                      ),
                    ),
                    onPressed: () => null //TODO открытие галереи
                    ),
              ),
              GestureDetector(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Войти с помощью логина",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontSize: fontSize))),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        )));
  }
}

class CircularBorder extends StatelessWidget {
  final Color color;
  final double size;
  final double width;
  final Widget icon;

  const CircularBorder(
      {Key key,
      this.color = Colors.blue,
      this.size = 70,
      this.width = 7.0,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          icon == null ? Container() : icon,
          CustomPaint(
            size: Size(size, size),
            foregroundPainter: MyPainter(completeColor: color, width: width),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  Color lineColor = Colors.transparent;
  Color completeColor;
  double width;

  MyPainter({this.completeColor, this.width});

  @override
  void paint(Canvas canvas, Size size) {
    Paint complete = new Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Offset center = new Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var percent = (size.width * 0.001) / 2;

    double arcAngle = 2 * pi * percent;
    print("$radius - radius");
    print("$arcAngle - arcAngle");
    print("${radius / arcAngle} - divider");

    for (var i = 0; i < 8; i++) {
      var init = (-pi / 2) * (i / 2);

      canvas.drawArc(new Rect.fromCircle(center: center, radius: radius), init,
          arcAngle, false, complete);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
