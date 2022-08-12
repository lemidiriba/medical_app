import 'package:flutter/material.dart';
import 'package:medical_app/constant/app_colors.dart';
import 'package:medical_app/constant/screen_dimensions.dart';
import 'package:medical_app/widgets/custom_bottom_navigation.dart';
import 'package:medical_app/widgets/icon_text.dart';
import 'package:medical_app/widgets/large_text.dart';
import 'package:medical_app/widgets/list_item.dart';
import 'package:medical_app/widgets/row_text.dart';
import 'package:medical_app/widgets/small_text.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Icon> categoryIcon = const [
    Icon(
      Icons.heart_broken,
      color: Colors.red,
    ),
    Icon(
      Icons.bolt_outlined,
      color: Colors.blue,
    ),
    Icon(
      Icons.yard_outlined,
      color: Colors.green,
    ),
    Icon(
      Icons.account_balance_outlined,
      color: AppColors.textColor,
    ),
  ];

  List<String> imageList = [
    'image_3.jpg',
    'image_4.jpg',
    'image_5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: ScreenDimensions.width40,
                    height: ScreenDimensions.height40,
                    margin: EdgeInsets.only(right: ScreenDimensions.padding10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image/image_2.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmallText(text: "Wellcome back"),
                        Row(
                          children: const [
                            LargeText(
                              text: "Nazmul ",
                              size: 20,
                            ),
                            Icon(Icons.waving_hand_rounded,
                                color: Color(0xFFFF9529)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: ScreenDimensions.width40,
                    height: ScreenDimensions.width40,
                    decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(Icons.menu),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenDimensions.sizedBoxHeight15,
              ),
              RowText(largeText: "UpComming Appointment", smallText: "See all"),
              SizedBox(
                height: ScreenDimensions.sizedBoxHeight15,
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 14, right: 10, left: 15),
                    padding: const EdgeInsets.only(
                        right: 10, left: 10, top: 20, bottom: 20),
                    width: double.maxFinite,
                    height: ScreenDimensions.width160,
                    decoration: BoxDecoration(
                      color: AppColors.shadeOne,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 7, right: 7, left: 7),
                    padding: const EdgeInsets.only(
                        right: 10, left: 10, top: 20, bottom: 20),
                    width: double.maxFinite,
                    height: ScreenDimensions.width160,
                    decoration: BoxDecoration(
                      color: AppColors.shadeThree,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        right: 10, left: 10, top: 20, bottom: 20),
                    width: double.maxFinite,
                    height: ScreenDimensions.width160,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: ScreenDimensions.width40,
                              height: ScreenDimensions.height40,
                              margin: EdgeInsets.only(
                                  right: ScreenDimensions.padding10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/image/image_2.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SmallText(
                                    text: "Dr. Rohul Alom",
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold,
                                    size: 16,
                                  ),
                                  SizedBox(height: ScreenDimensions.height5),
                                  const SmallText(
                                    text: "Tooth, Specialist",
                                    size: 12,
                                    color: AppColors.white,
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.more_vert,
                              color: AppColors.white,
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: ScreenDimensions.height50,
                              width: ScreenDimensions.width160,
                              child: OutlinedButton.icon(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          AppColors.shadeThree),
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.calendar_month_outlined,
                                  color: AppColors.white,
                                ),
                                label: SmallText(
                                  text: "Sep 18,2022",
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                            Container(
                              height: ScreenDimensions.height50,
                              width: ScreenDimensions.width160,
                              child: OutlinedButton.icon(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          AppColors.shadeThree),
                                ),
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.access_time_outlined,
                                  color: AppColors.white,
                                ),
                                label: const SmallText(
                                  text: "(11 Am-03 Pm)",
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    top: ScreenDimensions.height30,
                    bottom: ScreenDimensions.height20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        cursorColor: AppColors.primaryColor,
                        style: const TextStyle(
                          color: AppColors.textLightDark,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search_outlined,
                            color: AppColors.textLightDark,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: AppColors.secondaryColor,
                          hintText: "Search ...",
                          hintStyle: const TextStyle(
                            color: AppColors.textLightDark,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: AppColors.secondaryColor),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: ScreenDimensions.sizedBoxHeight15),
                      width: ScreenDimensions.width50,
                      height: ScreenDimensions.height50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryColor,
                      ),
                      child: const Icon(
                        Icons.menu_open,
                        color: AppColors.white,
                        size: 25,
                      ),
                    )
                  ],
                ),
              ),
              RowText(largeText: "Category ", smallText: "See all"),
              Container(
                width: double.maxFinite,
                height: ScreenDimensions.height60,
                margin: EdgeInsets.only(
                    top: ScreenDimensions.height20,
                    bottom: ScreenDimensions.height20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        left: ScreenDimensions.width10,
                        right: ScreenDimensions.width10,
                      ),
                      height: ScreenDimensions.height40,
                      width: ScreenDimensions.width180,
                      child: OutlinedButton.icon(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColors.secondaryColor),
                        ),
                        onPressed: () {},
                        icon: categoryIcon[index],
                        label: const LargeText(
                          text: "Heart surgeon",
                          color: AppColors.textColor,
                          size: 16,
                        ),
                      ),
                    );
                  }),
                ),
              ),
              RowText(largeText: "Top Rated Doctor ", smallText: "See all"),
              Container(
                height: ScreenDimensions.height280,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Slidable(
                        endActionPane: ActionPane(
                          motion: StretchMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {},
                              icon: Icons.message_outlined,
                              backgroundColor: AppColors.primaryColor,
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ],
                        ),
                        child: ListItem(
                            name: "Dr. Nitsu Zerihun",
                            profession: "Cardiologist",
                            image: imageList[index]),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation()
    );
  }
}
