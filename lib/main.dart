import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rider_app/views/pages/Stepper/stepper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Pharmacy',
        theme: ThemeData(
          // primaryColor: Colors.blue,
          // primarySwatch: Colors.blue,
          textTheme: Typography.englishLike2021.apply(
            fontSizeFactor: 1.sp,
            // bodyColor: Colors.black,
          ),
          iconTheme: const IconThemeData(
            color: Colors.grey,
          ),
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Inter',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: StepperPage(),
      ),
    );
  }
}
