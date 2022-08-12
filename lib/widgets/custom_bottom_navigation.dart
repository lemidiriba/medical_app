import 'package:flutter/material.dart';
import 'package:medical_app/constant/app_colors.dart';
import 'package:medical_app/constant/screen_dimensions.dart';

class CustomBottomNavigation extends StatefulWidget {
  CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: ScreenDimensions.width20,
          right: ScreenDimensions.width20,
          bottom: ScreenDimensions.height10),
      height: ScreenDimensions.height60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.textColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
            },
            child: Icon(
              Icons.home_outlined,
              color: pageIndex == 1 ? AppColors.secondaryColor : Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 2;
              });
            },
            child: Icon(
              Icons.calendar_month_outlined,
              color: pageIndex == 2 ? AppColors.secondaryColor : Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 3;
              });
            },
            child: Icon(
              Icons.search_outlined,
              color: pageIndex == 3 ? AppColors.secondaryColor : Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 4;
              });
            },
            child: Icon(
              Icons.person_pin_outlined,
              color: pageIndex == 4 ? AppColors.secondaryColor : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
