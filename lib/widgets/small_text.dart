import 'package:flutter/material.dart';
import 'package:medical_app/constant/app_colors.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  const SmallText(
      {Key? key,
      required this.text,
      this.color = AppColors.textLightDark,
      this.fontWeight = FontWeight.normal,
      this.size = 14})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style:
          TextStyle( color: color, fontSize: size,fontWeight: fontWeight),
    );
  }
}
