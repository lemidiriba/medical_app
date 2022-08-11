import 'package:flutter/material.dart';
import 'package:medical_app/constant/app_colors.dart';
import 'package:medical_app/constant/screen_dimensions.dart';
import 'package:medical_app/widgets/circle_painter.dart';
import 'package:medical_app/widgets/large_text.dart';
import 'package:medical_app/widgets/small_text.dart';
import 'package:medical_app/widgets/triple_circle.dart';

class GetStarted extends StatefulWidget {
  GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  int page = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: ScreenDimensions.height280,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              width: double.maxFinite,
              height: ScreenDimensions.height600,
              child: Stack(
                children: [
                  Align(alignment: Alignment.center, child: TripleCircle()),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image/image_1.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: ScreenDimensions.height420,
            bottom: 0,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                top: 50,
              ),
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(250, 100),
                    topRight: Radius.elliptical(250, 100)),
              ),
              child: PageView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                controller: pageController,
                onPageChanged: (pageIndex) {
                  setState(() {
                    page = pageIndex;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        width: ScreenDimensions.sizedBoxWidth250,
                        child: const LargeText(
                            text: "Perfect Healthcare Solution"),
                      ),
                      SizedBox(
                        height: ScreenDimensions.sizedBoxHeight30,
                      ),
                      SizedBox(
                        width: ScreenDimensions.sizedBoxWidth250,
                        child: const SmallText(
                            text:
                                "Find a specialist that you only need on a consultation application"),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (listIndex) {
                    return Container(
                      margin: const EdgeInsets.only(right: 8),
                      height: 8,
                      width: page == listIndex ? 20 : 8,
                      decoration: BoxDecoration(
                          color: page == listIndex
                              ? AppColors.primaryColor
                              : AppColors.textLightDark,
                          borderRadius: BorderRadius.circular(8)),
                    );
                  }),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 40,
                  ),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: AppColors.textColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: SmallText(text: "Get Started", color: AppColors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
