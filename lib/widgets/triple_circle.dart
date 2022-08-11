import 'package:flutter/material.dart';
import 'package:medical_app/widgets/circle_painter.dart';

class TripleCircle extends StatelessWidget {
  TripleCircle({Key? key}) : super(key: key);
  List<Color> listColor = const [
    Color(0xFF5055c8),
    Color(0xFF6468ce),
    Color(0xFF777bd4),
  ];

  List<double> width = [200,160,120];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(3, (index) {
        return Container(
          width: 140,
          height: 140,
          child: CustomPaint(
            painter: CirclePainter(
              color: listColor[index],
              offset: Offset(60, 20),
              radius: width[index],
            ),
          ),
        );
      }),
    );
  }
}
