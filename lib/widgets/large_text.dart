import 'package:flutter/material.dart';
import 'package:medical_app/constant/app_colors.dart';

class LargeText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const LargeText(
      {Key? key,
      required this.text,
      this.color = AppColors.textColor,
      this.size = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style:
          TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: size),
    );
  }
}
