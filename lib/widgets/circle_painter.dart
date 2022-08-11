import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CirclePainter extends CustomPainter {
  final Color color;
  final Offset offset;
  final double radius;
  CirclePainter({Key? key, required this.color, required this.offset,required this.radius});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
    ..color = color
    ..style = PaintingStyle.fill;

    // a circle
    canvas.drawCircle(offset, radius, paint);

  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
  
}