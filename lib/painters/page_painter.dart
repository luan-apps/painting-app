import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PagePainter extends CustomPainter {
  final Map<Offset, Color> points;
  final Color color;

  PagePainter({
    @required this.points,
    @required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (Offset offset in points.keys) {
      if(points.keys.last == offset) {
        Paint paint = Paint()..color = color;
        canvas.drawCircle(offset, 10, paint);

      } else {
        Paint paint = Paint()..color = points[offset];
        canvas.drawCircle(offset, 10, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
