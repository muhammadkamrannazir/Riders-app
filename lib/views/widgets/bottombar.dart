import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rider_app/controllers/bottombar_controller.dart';
import 'package:rider_app/utils/app_images.dart';
import '../../utils/app_colors.dart';
import 'circular_img.dart';

class CustomGetXBottomBar extends StatelessWidget {
  LandingPageController landingPageController =
      Get.put(LandingPageController());

  final Widget home;
  final Widget? locator;
  final Widget profile;

  CustomGetXBottomBar({
    required this.home,
    this.locator,
    required this.profile,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => IndexedStack(
        index: landingPageController.tabIndex.value,
        children: <Widget>[
          home,
          locator!,
          profile,
        ],
      ),
    );
  }
}

bottomNavItem({
  required String imgPath,
  required bool isSelected,
  String? label,
}) {
  return BottomNavigationBarItem(
    icon: Image(
      height: 45.h,
      width: 32.w,
      image: AssetImage(imgPath),
      color: isSelected ? MyColor.green : Colors.white,
    ),
    label: label!,
  );
}

buildBottomNavigationMenu(context, landingPageController) {
  return Obx(
    () => SizedBox(
      height: 67.h,
      child: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontSize: 0),
        unselectedLabelStyle: const TextStyle(fontSize: 0),
        type: BottomNavigationBarType.fixed,
        elevation: 16,
        backgroundColor: MyColor.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: landingPageController.tabIndex.value,
        onTap: landingPageController.changeTabIndex,
        items: [
          bottomNavItem(
            imgPath: Assets.bottomHome,
            isSelected: landingPageController.tabIndex == 0,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            label: '',
            icon: MyCircularImg(
                AssetPath: Assets.locate, height: 45.h, width: 45.w),
          ),
          bottomNavItem(
            imgPath: Assets.bottomProfile,
            isSelected: landingPageController.tabIndex == 2,
            label: 'Profile',
          ),
        ],
      ),
    ),
    // Stack(
    //   children: [
    //     Align(
    //       alignment: Alignment.bottomCenter,
    //       child:
    //     ),
    //     Align(
    //       alignment: Alignment.bottomCenter,
    //       child: Padding(
    //         padding: EdgeInsets.only(bottom: 10.h),
    //         child: Image(
    //           height: 50.h,
    //           width: 50.h,
    //           image: AssetImage(Assets.add),
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
  );
}
