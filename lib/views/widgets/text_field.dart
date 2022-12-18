import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rider_app/utils/app_colors.dart';
import 'package:rider_app/utils/app_images.dart';
import 'package:rider_app/views/widgets/circle_avatar.dart';
import 'package:rider_app/views/widgets/text.dart';

class MyTextField extends StatelessWidget {
  String? hintText;
  String? errorText;
  TextEditingController? controller;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  Function(String?)? onSaved;
  Widget? icon;
  Widget? suffix;
  Widget? suffixIcon;
  bool? obscureText;
  bool? visibility;
  bool? dataFieldStyle;
  bool readOnly;
  Function? onShowPassword;
  String? prefixIcon;
  String? title;

  String? Function(String?)? validator;

  MyTextField(
      {Key? key,
      required this.hintText,
      this.errorText,
      this.readOnly = false,
      this.keyboardType,
      this.textInputAction,
      this.onSaved,
      this.controller,
      this.icon,
      this.suffixIcon,
      this.suffix,
      this.obscureText = false,
      this.visibility = false,
      this.dataFieldStyle = true,
      this.onShowPassword,
      this.validator,
      this.prefixIcon,
      this.title})
      : super(key: key);

  //  passController = Get.put(PassController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            MyText(
              text: title!,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(width: 5.w),
            MyCircleAvatar(
              img: Assets.dot,
              height: 5,
              width: 5,
            )
          ],
        ),
        SizedBox(height: 1.h),
        Container(
          height: 47.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            // color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350]!,
                offset: const Offset(0.0, 0.0), //(x,y)
                blurRadius: 10,
              ),
            ],
          ),
          child: TextFormField(
            // readOnly: readOnly,
            // autofocus: false,
            // controller: controller,
            // obscureText: obscureText!,
            // keyboardType: keyboardType,
            // textInputAction: textInputAction,
            // onSaved: onSaved,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            // focusNode: FocusNode(),
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 0.h, horizontal: 13.w),
              filled: true,
              fillColor: Colors.white,

              // errorText: errorText,
              border: InputBorder.none,
              enabledBorder: enabledBorder(),
              // contentPadding: contentPadding(),
              hintText: hintText,
              // suffix: suffix ??
              //     const Icon(
              //       Icons.arrow_drop_down_rounded,
              //       color: Colors.white,
              //     ),
              suffixIcon: suffixIcon,
              // ?? null,
              // prefixIcon: Image(
              //   image: AssetImage(prefixIcon!),
              // ),
              prefixIconConstraints:
                  BoxConstraints(maxWidth: 22.w, minWidth: 22.w),

              hintStyle: hintStyle(),
            ),
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            validator: validator,
          ),
        ),
        // Card(
        //   borderRadius: BorderRadius.circular(5.r),
        //   elevation: 2,
        //   clipBehavior: Clip.antiAlias,
        //   shadowColor: Colors.grey,
        //   child:
        // ),
      ],
    );
  }

  border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.r),
      // borderSide: const BorderSide(color: LIGHT_COLOR),
    );
  }

  enabledBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.r), borderSide: BorderSide.none);
  }

  contentPadding() {
    return const EdgeInsets.symmetric(
      vertical: 0.0,
      horizontal: 0.0,
    );
  }

  visibilityIcon() {
    return visibility == true
        ? InkWell(
            child: icon,
            onTap: () {
              onShowPassword!();
            },
          )
        : null;
  }

  hintStyle() {
    return TextStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
  }

  void dissmissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
