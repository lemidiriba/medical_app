import 'package:flutter/material.dart';
import 'package:medical_app/constant/app_colors.dart';
import 'package:medical_app/constant/screen_dimensions.dart';
import 'package:medical_app/widgets/small_text.dart';

class IconText extends StatelessWidget {
  final IconData icon;
final String text;
final Color color;
   IconText({Key? key,required this.icon, required this.text, required this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        SizedBox(
          height: ScreenDimensions.sizedBoxHeight5,
        ),
        SmallText(text: text)
      ],
    );
  }
}
