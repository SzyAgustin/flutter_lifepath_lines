import 'package:flutter/material.dart';

class BackgroundCurves extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey[50],
      child: CustomPaint(
        painter: CurvesPainter(),
      ),
    );
  }
}

class CurvesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
    ..color = Color(0xffed8080)
    ..strokeWidth = 8.0;

    Path pathBack = Path();
    pathBack.lineTo(size.width, 0);
    pathBack.lineTo(size.width, size.height * .11);
    pathBack.quadraticBezierTo(size.width * .83, size.height * .08, size.width * .78, size.height * .13);
    pathBack.quadraticBezierTo(size.width * .73, size.height * .20, size.width * .65, size.height * .20);
    pathBack.close();
    canvas.drawPath(pathBack, paint);

    Path pathFront = Path();
    pathFront.lineTo(0, size.height * 0.37);
    pathFront.quadraticBezierTo(size.width * .65, size.height * .38, size.width * .65, size.height * .18);
    pathFront.quadraticBezierTo(size.width * .64, size.height * .12, size.width * .50, size.height * .10);
    pathFront.quadraticBezierTo(size.width * .40, size.height * .09, size.width * .35, 0);
    pathFront.close();
    paint.color = Colors.red[200];
    canvas.drawPath(pathFront, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

