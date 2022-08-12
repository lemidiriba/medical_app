import 'package:flutter/material.dart';
import 'package:medical_app/widgets/large_text.dart';
import 'package:medical_app/widgets/small_text.dart';

class RowText extends StatelessWidget {
  final String smallText;
  final String largeText;

   RowText({Key? key,required this.largeText,required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LargeText(
          text: largeText,
          size: 20,
        ),
        SmallText(text: smallText)
      ],
    );
  }
}
