import 'package:flutter/material.dart';
import 'package:pancakes/widgets/constants.dart';

class PainterNavBar extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var pathNav = Path();
    var paintNav = Paint()
      ..color = Colors.white70.withOpacity(0.7)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8
      ..isAntiAlias = true
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 1.0);

    pathNav.moveTo(0, size.height * 0.7);
    pathNav.cubicTo(size.width * 0.01, size.height * 0.4, size.width * 0.03,
        size.height * 0.35, size.width * 0.4, size.height * 0.35);
    pathNav.cubicTo(size.width * 0.45, 0, size.width * 0.55, 0,
        size.width * 0.6, size.height * 0.35);
    pathNav.cubicTo(size.width * 0.97, size.height * 0.35, size.width * 0.99,
        size.height * 0.4, size.width, size.height * 0.7);

    canvas.drawPath(pathNav, paintNav);

    var path = Path();
    var paint = Paint()
      ..color = const Color(0xff747a8a)
      ..shader = LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.3, 0.9],
              colors: [KBrownD.withOpacity(0.7), KGBlueD.withOpacity(0.7)])
          .createShader(colors)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0
      ..isAntiAlias = true;

    path.moveTo(0, size.height * 0.7);
    path.cubicTo(size.width * 0.01, size.height * 0.4, size.width * 0.03,
        size.height * 0.35, size.width * 0.4, size.height * 0.35);
    path.cubicTo(size.width * 0.45, 0, size.width * 0.55, 0, size.width * 0.6,
        size.height * 0.35);
    path.cubicTo(size.width * 0.97, size.height * 0.35, size.width * 0.99,
        size.height * 0.4, size.width, size.height * 0.7);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.7);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
