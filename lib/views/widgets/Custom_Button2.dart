// // ignore_for_file: file_names

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MyButton2 extends StatelessWidget {
//   final String name;
//   final double width;
//   final VoidCallback? onPressed;

//   const MyButton2({
//     Key? key,
//     required this.name,
//     this.width = double.infinity,
//     this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 48.h,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(18.r),
//         border: Border.all(
//           color: MyColor.deepBlue,
//         ),
//         color: Colors.white,
//       ),
//       child: TextButton(
//         onPressed: onPressed,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Image(
//                 height: 35,
//                 width: 35,
//                 image: AssetImage(Assets.google),
//               ),
//             ),
//             const SizedBox(width: 40),
//             Text(
//               name,
//               style: TextStyle(
//                 fontSize: 16.sp,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
