import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rider_app/controllers/bottombar_controller.dart';
import 'package:rider_app/views/pages/bottom_pages/home.dart';
import 'package:rider_app/views/pages/bottom_pages/location.dart';
import 'package:rider_app/views/pages/bottom_pages/profile.dart';
import 'package:rider_app/views/pages/others/medicine.dart';
import 'package:rider_app/views/widgets/bottombar.dart';

class BottomTabs extends StatelessWidget {
  BottomTabs({Key? key}) : super(key: key);

  final landingPageController = Get.put(
    LandingPageController(),
    // permanent: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: homePageAppBar(),
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
      body: bottomTabs(),
    );
  }

  bottomTabs() {
    return CustomGetXBottomBar(
      home: Home(),
      locator: MedicinePage(),
      profile: const Profile(),
    );
  }
}
