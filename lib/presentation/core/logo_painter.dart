import 'dart:math' as math;

import 'package:flutter/material.dart';

class LogoPainter extends CustomPainter {
  const LogoPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final Paint linePaint = Paint()..strokeWidth = 3;
    final Paint linePaint2 = Paint()
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    final Rect myRect = const Offset(36.5, 25.0) & const Size(18, 10.0);

    canvas.drawLine(const Offset(42, 10), const Offset(30, 50), linePaint);
    canvas.drawLine(const Offset(42, 10), const Offset(52, 50), linePaint);
    canvas.drawLine(const Offset(42, 10), const Offset(42, 2), linePaint);
    canvas.drawCircle(const Offset(42, 10), 4, linePaint);
    canvas.drawArc(myRect, 0.3, math.pi, false, linePaint2);

    canvas.drawLine(const Offset(5, 10), const Offset(30, 10), linePaint);
    canvas.drawLine(const Offset(17.5, 10), const Offset(12.5, 50), linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
