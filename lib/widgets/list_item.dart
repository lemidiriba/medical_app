import 'package:flutter/material.dart';
import 'package:medical_app/constant/app_colors.dart';
import 'package:medical_app/constant/screen_dimensions.dart';
import 'package:medical_app/widgets/icon_text.dart';
import 'package:medical_app/widgets/large_text.dart';
import 'package:medical_app/widgets/small_text.dart';

class ListItem extends StatelessWidget {
  final String name;
  final String profession;
  final String image;
 ListItem({Key? key,required this.name,required this.profession,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenDimensions.height10),
      height: 110,
      decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: ScreenDimensions.width10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image/'+image),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: ScreenDimensions.height10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LargeText(
                  text: name,
                  size: 18,
                ),
                SizedBox(
                  height: ScreenDimensions.sizedBoxHeight5,
                ),
                SmallText(text: profession),
                SizedBox(
                  height: ScreenDimensions.sizedBoxHeight5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconText(
                      icon: Icons.star,
                      text: " 4.3",
                      color: Color(0xFFFF9529),
                    ),
                    SizedBox(
                      width: ScreenDimensions.width10,
                    ),
                    IconText(
                      icon: Icons.access_time_outlined,
                      text: " (11 Am-03 Pm)",
                      color: Colors.blue,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
