// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rider_app/utils/app_colors.dart';

class MyRoundedButton extends StatelessWidget {
  final String name;
  // ---- ? means, height can be null
  double? height;
  double? width;
  final Color? color;
  final Color? textColor;
  final VoidCallback? onPressed;

  MyRoundedButton({
    Key? key,
    required this.name,
    this.height,
    this.color,
    this.textColor,
    this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        //----------------> ?? means if height is null then assign assign 50.h else apply user entered height
        height: height ?? 59.h,
        width: width ?? 327.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200.r),
          color: color ?? MyColor.green,
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontSize: 20.sp,
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
