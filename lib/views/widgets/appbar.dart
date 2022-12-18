import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rider_app/controllers/bottombar_controller.dart';
import 'package:rider_app/utils/app_images.dart';
import 'package:rider_app/views/widgets/text.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(210);
  int? height;
  final String? title;
  final bool? getXtitle;
  final bool backGoing;
  final bool? scanner;
  final bool? sneakerDatabase;
  final bool? userProfile;
  final bool? logOut;
  final Color? color;
  PreferredSizeWidget? bottom;
  CustomAppbar({
    this.bottom,
    this.height,
    this.title,
    this.color,
    this.getXtitle = false,
    this.backGoing = false,
    this.scanner = false,
    this.sneakerDatabase = false,
    this.userProfile = false,
    this.logOut = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final landingPageController = Get.put(LandingPageController());
    return AppBar(
      bottom: bottom,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      automaticallyImplyLeading: backGoing,
      title: Obx(
        () => MyText(
          text: '${landingPageController.title}',
          color: Colors.white,
          fontSize: 22.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
              // landingPageController.scaffoldKey.currentState!.openDrawer();
            },
            child: Image(
              height: 27.h,
              width: 27.w,
              image: AssetImage(Assets.drawer),
            ),
          ),
        ),
      ],
    );
  }
}
