import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rider_app/controllers/bottomPages/profile.dart';
import 'package:rider_app/utils/app_colors.dart';
import 'package:rider_app/utils/app_images.dart';
import 'package:rider_app/utils/app_sizes.dart';
import 'package:rider_app/views/widgets/circle_avatar.dart';
import 'package:rider_app/views/widgets/circular_field.dart';
import 'package:rider_app/views/widgets/rounded_button.dart';
import 'package:rider_app/views/widgets/text.dart';

class MedicinePage extends StatelessWidget {
  MedicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.darkBlue,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 24.w,
              top: 60.h,
            ),
            child: const CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: Center(
                  child: Icon(
                Icons.keyboard_arrow_left_rounded,
                color: Colors.black,
                size: 30,
              )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Get.height * 0.69,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(188.r),
                  topRight: Radius.circular(188.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: screen_Padding,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 110.h),
                        MyText(
                          text: 'Medicine Name',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 15.h),
                        MyText(
                          text: 'Vitamin D3',
                          fontSize: 12.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MyText(
                              text: 'Total Amount',
                              fontSize: 10.sp,
                            ),
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MyText(
                              text: 'Pkr 5,000',
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        Container(
                          height: 40.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: .7,
                            ),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                            child: Obx(
                              () => counter(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        buildRow('Type', 'It is a long established fact '),
                        SizedBox(height: 15.h),
                        buildRow(
                            'Delivery pay::', 'It is a long established fact '),
                        SizedBox(height: 15.h),
                        buildRow('Type', 'Uk: \$1 per kilometer'),
                        SizedBox(height: 15.h),
                        CircularField(
                          hintText: 'It is a long established fact',
                          title: 'Comment:',
                          maxLines: 3,
                        ),
                        SizedBox(height: 15.h),
                        Center(
                          child: MyRoundedButton(
                            name: 'Submit',
                            onPressed: () {},
                            width: 187.w,
                            color: MyColor.blue,
                          ),
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 92.w, top: 70),
            child: MyCircleAvatar(
              height: 192.h,
              width: 192.w,
              img: Assets.medicine,
            ),
          ),
        ],
      ),
    );
  }

  counter() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              profileController.counterValue--;
            },
            color: Colors.green,
          ),
          MyText(
            text: profileController.counterValue.toString(),
            color: Colors.black,
          ),
          IconButton(
            icon: const Icon(Icons.add),
            color: Colors.green,
            onPressed: () {
              profileController.counterValue.value++;
            },
          ),
        ],
      ),
    );
  }

  buildRow(String? title, String? subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: MyText(
            text: title!,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.start,
          ),
        ),
        Expanded(
          child: MyText(
            text: subtitle!,
            fontSize: 13.sp,
            textAlign: TextAlign.start,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  final profileController = Get.put(ProfileController());
}
