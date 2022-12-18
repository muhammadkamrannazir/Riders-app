// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rider_app/utils/app_colors.dart';
// import 'package:rider_app/utils/app_images.dart';
// import 'package:rider_app/views/widgets/my_text.dart';

// class TaskLocation extends StatelessWidget {
//   const TaskLocation({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return 
//             Container(
//               width: 160.w,
//               decoration: BoxDecoration(
//                 color: MyColor.fillColor,
//                 borderRadius: BorderRadius.circular(10.r),
//               ),
//               child: Column(
//                 children: [
//                   Container(
//                     height: 102.h,
//                     width: 160.w,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.r),
//                       image: DecorationImage(
//                         image: AssetImage(
//                           Assets.map,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10.h),
//                   Container(
//                     margin: EdgeInsets.symmetric(horizontal: 15.w),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         MyText(
//                           text: 'Address',
//                           fontWeight: FontWeight.w500,
//                         ),
//                         SizedBox(height: 5.h),
//                         MyText(
//                           text: 'It is a long established fact.',
//                           fontWeight: FontWeight.w400,
//                           fontSize: 12.sp,
//                           textAlign: TextAlign.start,
//                           color: Colors.grey,
//                         ),
//                         SizedBox(height: 25.h),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             );
//   }
// }
