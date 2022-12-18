import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rider_app/controllers/widgets/text_field.dart';
import 'package:rider_app/utils/app_colors.dart';
import 'package:rider_app/utils/app_images.dart';
import 'package:rider_app/utils/app_sizes.dart';
import 'package:rider_app/views/pages/bottom_pages/home.dart';
import 'package:rider_app/views/widgets/appbar.dart';
import 'package:rider_app/views/widgets/circle_avatar.dart';
import 'package:rider_app/views/widgets/profile_field.dart';
import 'package:rider_app/views/widgets/text.dart';
import 'package:rider_app/views/widgets/text_field.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.darkBlue,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        // leading: MyCircleAvatar(
        //   height: 42.h,
        //   width: 42.w,
        //   color: MyColor.blue,
        //   img: Assets.arrowLeft,
        // ),
        centerTitle: true,
        backgroundColor: MyColor.darkBlue,
        title: MyText(
          text: 'Profile',
          fontSize: 18.sp,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Padding(
        padding: screen_Padding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15.h),
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200.r),
                    topRight: Radius.circular(200.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage(Assets.alvart),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              MyText(
                text: 'Alvart Ainstain',
                fontSize: 22.sp,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 10.h),
              MyText(
                text: '@albart.ainstain',
                fontSize: 12.sp,
                color: MyColor.lightBlack,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 10.h),
              Container(
                height: 40.h,
                width: 78.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.lightBlue,
                    width: .7,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: MyText(
                    text: 'Edit',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  timeWidget(
                    img: Assets.on_going,
                    number: '25',
                    text: 'On Going',
                  ),
                  SizedBox(width: 50.w),
                  timeWidget(
                      img: Assets.completed,
                      number: '25',
                      text: 'Total Complete'),
                ],
              ),
              SizedBox(height: 37.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SecondaryField(
                      hintText: 'Farzan',
                      title: 'First name',
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: SecondaryField(
                      hintText: 'Khan',
                      title: 'Last name',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 37.w),
              SecondaryField(
                hintText: 'Karachi',
                title: 'City',
              ),
              SizedBox(height: 37.w),
              SecondaryField(
                hintText: 'farzankhan@gmail.com',
                title: 'Email',
              ),
              SizedBox(height: 37.w),
              SecondaryField(
                hintText: '..............',
                title: 'Create Pasword',
              ),
              SizedBox(height: 29.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText(
                    text: 'Your Vehicle Details',
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 37.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SecondaryField(
                      hintText: 'Super Power',
                      title: 'Make',
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: SecondaryField(
                      hintText: '2020',
                      title: 'Model',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 37.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SecondaryField(
                      hintText: 'Farzan',
                      title: 'Year',
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: SecondaryField(
                      hintText: 'Abc-132',
                      title: 'Lisence',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 37.w),
              SecondaryField(
                hintText: 'Karachi',
                title: 'Vehicle',
              ),
              SizedBox(height: 30.w),
            ],
          ),
        ),
      ),
    );
  }
}

timeWidget({
  String? img,
  String? number,
  String? text,
}) {
  return Column(
    children: [
      Image.asset(
        img!,
        height: 24.h,
        width: 24.w,
      ),
      SizedBox(
        height: 5.h,
      ),
      MyText(
        text: number!,
        fontSize: 22.sp,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      SizedBox(height: 5.h),
      MyText(text: text!, color: MyColor.lightBlack),
    ],
  );
}

final textFileController = Get.put(TextFieldController());
