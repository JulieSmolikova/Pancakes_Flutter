import 'package:flutter/material.dart';

class PainterCatalog extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var pathCatalog = Path();
    var paintCatalog = Paint()
      ..color = Colors.white70
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..isAntiAlias = true
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 1.5);

    pathCatalog.moveTo(size.width * 0, size.height * 0.81);
    pathCatalog.cubicTo(
        0, size.height * 0.9,
        0, size.height,
        size.width * 0.25, size.height);
    pathCatalog.lineTo(size.width * 0.75, size.height);
    pathCatalog.cubicTo(
        size.width, size.height,
        size.width, size.height * 0.9,
        size.width, size.height * 0.81);
    //pathCatalog.lineTo(size.width, 0);
    //pathCatalog.lineTo(0, 0);
    //pathCatalog.lineTo(size.width * 0, size.height * 0.8);

    canvas.drawPath(pathCatalog, paintCatalog);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
