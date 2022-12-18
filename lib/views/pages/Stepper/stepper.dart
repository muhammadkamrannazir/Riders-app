import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rider_app/controllers/stepper_controller.dart';
import 'package:rider_app/utils/app_colors.dart';
import 'package:rider_app/utils/app_images.dart';
import 'package:rider_app/views/pages/Stepper/stepperdata.dart';
import 'package:rider_app/views/widgets/circular_img.dart';
import 'package:rider_app/views/widgets/text.dart';

class StepperPage extends StatelessWidget {
  final stepperController = Get.put(StepperController());

  // final circularController = Get.put(CircularController());
  StepperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: "Create Dish",
      //   actionWidget: const NotificationWidget(),
      //   automaticallyImplyLeading: true,
      // ),
      body: Stack(
        children: [
          Image.asset(
            Assets.topper,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Theme(
              data: ThemeData(
                canvasColor: Colors.transparent,
                colorScheme: Theme.of(context).colorScheme.copyWith(
                      primary: Colors.blue,
                    ),
              ),
              child: Obx(
                () => Stepper(
                  elevation: 0,
                  type: StepperType.horizontal,
                  currentStep: stepperController.currentStep.value,
                  onStepTapped: (index) {
                    stepperController.tapped(index);
                  },
                  controlsBuilder: (BuildContext ctx, ControlsDetails dtl) {
                    return Row(
                      children: <Widget>[
                        TextButton(
                          onPressed: dtl.onStepContinue,
                          child: const Text(''),
                        ),
                        TextButton(
                          onPressed: dtl.onStepCancel,
                          child: const Text(''),
                        ),
                      ],
                    );
                  },
                  steps: [
                    Step(
                      title: MyText(
                        text: 'Sign up',
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                      content: SignUpPage(),
                      isActive: stepperController.currentStep.value >= 0,
                      state: stepperController.currentStep.value >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                        title: MyText(
                          text: 'Profile',
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                        content: SignUpPage(),
                        isActive: stepperController.currentStep.value >= 1,
                        state: stepperController.currentStep.value >= 1
                            ? StepState.complete
                            : StepState.disabled),
                    Step(
                        title: MyText(
                          text: 'Vehicle',
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                        content: SignUpPage(),
                        isActive: stepperController.currentStep.value >= 2,
                        state: stepperController.currentStep.value >= 2
                            ? StepState.complete
                            : StepState.disabled),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      //   child: MyRoundedButton(
      //     name: "Continue",
      //     onPressed: () {
      //       stepperController.continued();
      //     },
      //   ),
      // ),
    );
  }

  Widget myStepButton({
    String? img,
    void Function()? onPressed,
    double? height,
    double? width,
  }) {
    return IconButton(
      onPressed: onPressed,
      //  () {
      icon: Image(
        height: height ?? 43.h,
        width: width ?? 43.w,
        image: AssetImage(img ?? Assets.car),
      ),
    );
  }
}

check() {
  return MyCircularImg(
    AssetPath: Assets.check,
    height: 15.h,
    width: 15.w,
  );
}

unCheck() {
  return CircleAvatar(
    radius: 7.5.r,
    backgroundColor: Colors.white,
    child: CircleAvatar(
      backgroundColor: MyColor.blue,
      radius: 6.5.r,
      child: CircleAvatar(
        radius: 3.5.r,
        backgroundColor: Colors.white,
      ),
    ),
  );
}

Widget divider() {
  return Expanded(
    child: Container(
      height: 1,
      color: Colors.white,
    ),
  );
}
