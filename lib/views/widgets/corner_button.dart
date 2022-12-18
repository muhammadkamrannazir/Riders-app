// // ignore_for_file: must_be_immutable, file_names

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pharmacy_rx/utils/app_colors.dart';

// class CornerButton extends StatelessWidget {
//   final String name;
//   // ---- ? means, height can be null
//   double? height;
//   double? width;
//   final Color? color;
//   final Color? textColor;
//   final void Function()? onPressed;

//   CornerButton({
//     Key? key,
//     required this.name,
//     this.height,
//     this.color,
//     this.textColor,
//     this.width,
//     required this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//         //----------------> ?? means if height is null then assign assign 50.h else apply user entered height
//         height: height ?? 41.h,
//         width: width ?? 199.w,
//         color: color ?? Colors.pink,
//         // decoration: BoxDecoration(
//         //   borderRadius: BorderRadius.circular(10.r),
//         //   color: color ?? MyColor.primary,
//         // ),
//         child: Center(
//           child: Text(
//             name,
//             style: TextStyle(
//               fontSize: 15.sp,
//               color: textColor,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
