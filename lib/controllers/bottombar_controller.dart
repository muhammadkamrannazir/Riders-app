import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPageController extends GetxController {
  // final LandingPageController landingPageController = Get.put(
  //   LandingPageController(),
  //   permanent: false,
  // );

  var scaffoldKey = GlobalKey<ScaffoldState>();

  var tabIndex = 0.obs;
  var title = 'Home'.obs;

  void changeTabIndex(int index) {
    changeTitle(index);
    tabIndex.value = index;
  }

  void changeTitle(int index) {
    switch (index) {
      case 0:
        title.value = 'Home';
        break;
      case 1:
        title.value = '';
        break;
      case 2:
        title.value = 'Profile';
        break;
    }
  }
}
