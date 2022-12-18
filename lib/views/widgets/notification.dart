// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rider_app/views/widgets/my_text.dart';

// class CustomNotification extends StatelessWidget {
//   final String image;
//   final String? title;
//   final String? time;
//   final String? number;
//   const CustomNotification({
//     required this.image,
//     this.title,
//     this.time,
//     this.number,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         CircleAvatar(
//           radius: 40.r,
//           backgroundImage: AssetImage(image),
//         ),
//         SizedBox(width: 16.w),
//         Expanded(
//           child: MyText(
//             text: title!,
//             overflow: TextOverflow.visible,
//             textAlign: TextAlign.start,
//             maxLines: 3,
//             fontSize: 12.sp,
//           ),
//         ),
//         SizedBox(width: 14.w),
//         MyText(
//           text: time!,
//           fontSize: 12.sp,
//         ),
//         SizedBox(width: 14.w),
//         CircleAvatar(
//           radius: 14.r,
//           backgroundColor: Colors.green,
//           child: Center(
//             child: Text(number!),
//           ),
//         )
//       ],
//     );
//   }
// }
