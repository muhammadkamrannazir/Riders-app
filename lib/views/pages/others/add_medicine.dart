// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// class AddMedicine extends StatelessWidget {
//   AddMedicine({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: 80.h),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(50.r),
//             topRight: Radius.circular(50.r),
//           ),
//         ),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 25.w),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 65.h),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Medicine(
//                         image: Assets.capsules,
//                         title: 'Capsules',
//                       ),
//                       SizedBox(width: 17.w),
//                       Medicine(
//                         image: Assets.pills,
//                         title: 'Pills',
//                       ),
//                       SizedBox(width: 17.w),
//                       Medicine(
//                         image: Assets.eyedrops,
//                         title: 'Eyedrops',
//                       ),
//                       SizedBox(width: 17.w),
//                       Medicine(
//                         image: Assets.liquid,
//                         title: 'Liquid',
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 40.h),
//                 CircularField(
//                   title: 'Medicine name',
//                   hintText: 'Vitamin D3',
//                 ),
//                 SizedBox(height: 30.h),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: CircularField(
//                         title: 'Quantity',
//                         hintText: '4',
//                       ),
//                     ),
//                     SizedBox(
//                       width: 15.w,
//                     ),
//                     Expanded(
//                       child: CircularField(
//                         title: 'Type',
//                         hintText: 'Tabs',
//                         suffixIcon: const Icon(
//                           Icons.keyboard_arrow_down_outlined,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 30.h),
//                 CircularField(
//                   title: 'Delivery Charges',
//                   prefix: const Text('UK:'),
//                   hintText: "     \$1 per kilometer",
//                   suffixIcon: const Icon(
//                     Icons.keyboard_arrow_down_outlined,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 30.h),
//                 CircularField(
//                   title: 'Amount',
//                   hintText: "     5,000",
//                   prefix: const Text('pkr'),
//                 ),
//                 SizedBox(height: 30.h),
//                 CircularField(
//                   title: 'Address',
//                   hintText: "Type....",
//                   minLines: 3,
//                 ),
//                 SizedBox(height: 30.h),
//                 CircularField(
//                   title: 'Comments',
//                   hintText: "Type anything",
//                 ),
//                 SizedBox(height: 40.h),
//                 MyRoundedButton(
//                   width: 187.w,
//                   name: 'Submit',
//                   onPressed: () {
//                     Get.back();
//                   },
//                 ),
//                 SizedBox(height: 100.h),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   final landingPageController = Get.put(
//     LandingPageController(),
//     permanent: false,
//   );
// }
