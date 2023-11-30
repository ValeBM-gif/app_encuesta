import 'package:flutter/material.dart';

import 'constants.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: CustomPaint(
        size: Size(size.width, size.height),
        painter: Painter1(),
      ),
    );
  }
}

class Painter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = kPrimaryColor;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.15);//A
    path.quadraticBezierTo(//B                            C
        size.width *.25, size.height *.03, size.width * .6, size.height * 0.10);
    path.quadraticBezierTo(//D                        E
        size.width *.85, size.height *.15, size.width, size.height * 0.10);
    path.lineTo(size.width, 0);//F
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


class BackgroundDown extends StatefulWidget {
  const BackgroundDown({super.key});

  @override
  State<BackgroundDown> createState() => _BackgroundDownState();
}

class _BackgroundDownState extends State<BackgroundDown> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: CustomPaint(
        size: Size(size.width, size.height),
        painter: Painter2(),
      ),
    );
  }
}

class Painter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.yellow.shade700;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(size.width, size.height * 0.85);//A
    path.quadraticBezierTo(//B                            C
        size.width *.75, size.height *.97, size.width * .4, size.height * 0.90);
    path.quadraticBezierTo(//D                        E
        size.width *.15, size.height *.85, 0, size.height * 0.90);
    path.lineTo(0, size.height);//F
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}



