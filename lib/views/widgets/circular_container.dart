import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rider_app/utils/app_colors.dart';

class CircularContainer extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final double? height;
  final double? width;
  const CircularContainer({
    required this.child,
    this.onTap,
    this.height,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 43.h,
        width: width ?? 43.w,
        decoration: BoxDecoration(
          color: MyColor.blue,
          borderRadius: BorderRadius.circular(200.r),
        ),
        child: Center(child: child),
      ),
    );
  }
}
