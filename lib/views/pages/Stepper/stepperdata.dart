import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rider_app/controllers/auth/auth.dart';
import 'package:rider_app/controllers/stepper_controller.dart';
import 'package:rider_app/utils/app_images.dart';
import 'package:rider_app/utils/app_sizes.dart';
import 'package:rider_app/views/widgets/circle_avatar.dart';
import 'package:rider_app/views/widgets/rounded_button.dart';
import 'package:rider_app/views/widgets/text.dart';
import 'package:rider_app/views/widgets/text_field.dart';

class SignUpPage extends StatelessWidget {
  // final circularController = Get.put(CircularController());
  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 65.0.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: stepperController.currentStep.value == 0
                  ? 'Sign Up As A Driver'
                  : stepperController.currentStep.value == 1
                      ? 'Your Company Details'
                      : 'Your Vehicle Details',
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 25),
            stepperController.currentStep.value == 0
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      uploadDataCard(
                        'Upload Profile Photo',
                        Assets.profile_circular,
                        Assets.card1,
                      ),
                      SizedBox(width: 5.w),
                      uploadDataCard(
                        'Upload ID Driving Photo',
                        Assets.id,
                        Assets.card2,
                      ),
                    ],
                  )
                : const SizedBox(),
            stepperController.currentStep.value == 0
                ? SizedBox(height: 38.h)
                : const SizedBox(),
            stepperController.currentStep.value == 2
                ? Row(
                    children: [
                      Expanded(
                        child: MyTextField(
                          title: 'Make',
                          hintText: 'Super Power',
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: MyTextField(
                          title: 'Model',
                          hintText: '2020',
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                        child: MyTextField(
                          title: 'First name',
                          hintText: 'Farzan',
                        ),
                      ),
                      stepperController.currentStep.value == 0
                          ? SizedBox(width: 16.w)
                          : const SizedBox(),
                      stepperController.currentStep.value == 0
                          ? Expanded(
                              child: MyTextField(
                                title: 'Last name',
                                hintText: 'Khan',
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
            SizedBox(height: 37.h),
            stepperController.currentStep.value == 2
                ? Row(
                    children: [
                      Expanded(
                        child: MyTextField(
                          title: 'Year',
                          hintText: '2012',
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: MyTextField(
                          title: 'License Plate',
                          hintText: 'Abc - 123',
                        ),
                      ),
                    ],
                  )
                : const SizedBox(),
            stepperController.currentStep.value == 2
                ? SizedBox(height: 37.h)
                : const SizedBox(),
            MyTextField(
              title:
                  stepperController.currentStep.value == 2 ? 'Vehicle' : 'City',
              hintText: 'Karachi',
              suffix: const Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 39.h),
            stepperController.currentStep.value == 2
                ? const SizedBox()
                : MyTextField(
                    hintText: 'farzankhan@gmail.com',
                    title: 'Email',
                  ),
            stepperController.currentStep.value == 2
                ? const SizedBox()
                : SizedBox(height: 37.h),
            stepperController.currentStep.value == 2
                ? Center(
                    child: uploadDataCard(
                      'Upload ID Driving Photo',
                      Assets.id,
                      Assets.card2,
                    ),
                  )
                : MyTextField(
                    hintText: '........',
                    title: 'Create Password',
                    obscureText: true,
                  ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30.h,
              ),
              child: MyRoundedButton(
                name: "Continue",
                onPressed: () {
                  stepperController.continued();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  uploadDataCard(String? title, String? img, String? styleImage) {
    return SizedBox(
      height: 116.h,
      width: 156.w,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage(styleImage!),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                children: [
                  SizedBox(height: 15.h),
                  MyCircleAvatar(
                    img: img!,
                  ),
                  SizedBox(height: 10.h),
                  MyText(
                    text: title!,
                    fontSize: 12.sp,
                    overflow: TextOverflow.fade,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  final stepperController = Get.put(StepperController());
  final authController = Get.put(AuthController());
}
