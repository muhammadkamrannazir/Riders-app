import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCircleAvatar extends StatelessWidget {
  String? img;
  double? height;
  double? width;
  // Color? color;
  MyCircleAvatar({
    this.img,
    this.height = 42,
    this.width = 42,
    // this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        // color: color!,
        borderRadius: BorderRadius.circular(200.r),
        image: DecorationImage(
          image: AssetImage(img!),
        ),
      ),
    );
  }
}
