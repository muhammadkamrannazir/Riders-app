import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rider_app/utils/app_colors.dart';
import 'package:rider_app/views/widgets/text.dart';

class CircularField extends StatelessWidget {
  String? title;
  String? hintText;
  String? errorText;
  TextEditingController? controller;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  Function(String?)? onSaved;
  Widget? icon;
  Widget? suffixIcon;
  bool? obscureText;
  bool? visibility;
  bool? dataFieldStyle;
  bool readOnly;
  Function? onShowPassword;
  String? prefixIcon;
  String? prefixText;
  int? minLines;
  int? maxLines;
  String? Function(String?)? validator;
  Widget? prefix;
  bool? isTitle;
  bool? lessRounded = true;

  CircularField({
    Key? key,
    this.title,
    this.isTitle = true,
    required this.hintText,
    this.errorText,
    this.readOnly = false,
    this.keyboardType,
    this.textInputAction,
    this.onSaved,
    this.controller,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
    this.visibility = false,
    this.dataFieldStyle = true,
    this.onShowPassword,
    this.validator,
    this.prefixIcon,
    this.prefixText,
    this.minLines,
    this.maxLines,
    this.prefix,
    this.lessRounded,
  }) : super(key: key);

  //  passController = Get.put(PassController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isTitle == true
            ? MyText(
                text: title!,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.start,
              )
            : const SizedBox(),
        SizedBox(height: 14.h),
        TextFormField(
          // readOnly: readOnly,
          // autofocus: false,
          // controller: controller,
          // obscureText: obscureText!,
          // keyboardType: keyboardType,
          // textInputAction: textInputAction,
          // onSaved: onSaved,
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          // focusNode: FocusNode(),
          minLines: minLines,
          maxLines: maxLines,
          decoration: InputDecoration(
            // filled: true,
            // fillColor: MyColor.,
            // errorText: errorText,
            border: InputBorder.none,
            focusedBorder: enabledBorder(),
            enabledBorder: enabledBorder(),
            contentPadding: contentPadding(),
            hintText: hintText,
            prefix: prefix,
            suffixIcon: suffixIcon,
            // prefixText: prefixText,
            prefixStyle: const TextStyle(color: Colors.black),
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
      ],
    );
  }

  border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(200.r),
      // borderSide: const BorderSide(color: LIGHT_COLOR),
    );
  }

  enabledBorder() {
    return lessRounded == false
        ? OutlineInputBorder(
            borderRadius: BorderRadius.circular(200.r),
            borderSide: BorderSide.none,
          )
        : OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: MyColor.tealColor));
  }

  contentPadding() {
    return const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 25.0,
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
        fontSize: 12.sp, fontWeight: FontWeight.w400, color: Colors.grey);
  }

  void dissmissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
