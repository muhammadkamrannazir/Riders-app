import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rider_app/controllers/bottomPages/home_controller.dart';
import 'package:rider_app/controllers/bottombar_controller.dart';
import 'package:rider_app/utils/app_colors.dart';
import 'package:rider_app/utils/app_images.dart';
import 'package:rider_app/utils/app_sizes.dart';
import 'package:rider_app/views/pages/bottom_pages/location.dart';
import 'package:rider_app/views/widgets/appbar.dart';
import 'package:rider_app/views/widgets/text.dart';

class Home extends StatelessWidget {
  final landingPageController = Get.put(LandingPageController());
  final tabController = Get.put(MyTabController());
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.topper),
        Scaffold(
          key: landingPageController.scaffoldKey,
          backgroundColor: Colors.transparent,
          appBar: CustomAppbar(
            color: Colors.transparent,
            title: 'Home',
            bottom: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: MyColor.green,
              indicatorColor: MyColor.green,
              tabs: tabController.myTabs,
              controller: tabController.controller,
            ),
          ),
          body: Scaffold(
            backgroundColor: Colors.white,
            body: TabBarView(controller: tabController.controller, children: [
              activeTask('Today', MyColor.blue, Colors.white),
              activeTask('In Progress', MyColor.blue, Colors.white),
              activeTask('Done', Colors.white, MyColor.green),
            ]),
          ),
        ),
      ],
    );
  }

  activeTask(
    String? title,
    Color? titleColor,
    Color? bgColor,
  ) {
    return Padding(
      padding: screen_Padding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 29.h),
            searchField(),
            SizedBox(height: 20.h),
            Row(
              children: [
                myContainer(Assets.sort, 'Sort'),
                SizedBox(width: 8.h),
                myContainer(Assets.filter, 'Filter'),
              ],
            ),
            SizedBox(height: 24.h),
            bighContainer(
              title: title,
              titleColor: titleColor,
              bgColor: bgColor,
            ),
            SizedBox(height: 12.h),
            bighContainer(
              title: title,
              titleColor: titleColor,
              bgColor: bgColor,
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  bighContainer({String? title, Color? titleColor, Color? bgColor}) {
    return GestureDetector(
      onTap: () {
      },
      child: Container(
        height: 168.h,
        width: 327.w,
        decoration: BoxDecoration(
          color: Colors.lightBlue[50],
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 46.h,
                width: 273.w,
                decoration: BoxDecoration(
                  color: MyColor.yellow,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Pharmacy Name',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      Container(
                        height: 27.h,
                        width: 59.w,
                        decoration: BoxDecoration(
                          color: bgColor ?? Colors.white,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Center(
                          child: MyText(
                            text: title ?? 'Today',
                            color: titleColor ?? MyColor.blue,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 26.h),
              Row(
                children: [
                  Image.asset(
                    Assets.person_green,
                    height: 16.h,
                    width: 15.w,
                  ),
                  SizedBox(width: 9.h),
                  MyText(
                    text: 'Ahmed Ijaz',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Image.asset(
                    Assets.location,
                    height: 16.h,
                    width: 15.w,
                  ),
                  SizedBox(width: 9.h),
                  Expanded(
                    child: MyText(
                      text:
                          'There are many variations of passages of Lorem Ipsum available ......',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.start,
                      color: Colors.grey,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  searchField() {
    return Container(
      height: 46.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200.0.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[350]!,
            offset: const Offset(0.0, 0.0), //(x,y)
            blurRadius: 10,
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 30.w, bottom: 5.h),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                    filled: true,
                    fillColor: Colors.white,
                    // suffixText: 'Search',
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            CircleAvatar(
              radius: 35.r,
              backgroundColor: MyColor.blue,
              child: const Center(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

myContainer(String? img, String? title) {
  return Container(
    height: 40.h,
    width: 78.w,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: .7,
      ),
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(height: 19.h, width: 18.w, img!),
          SizedBox(width: 7.w),
          MyText(
            text: title!,
            fontSize: 12,
          ),
        ],
      ),
    ),
  );
}
