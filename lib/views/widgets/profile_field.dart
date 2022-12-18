import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rider_app/controllers/widgets/text_field.dart';
import 'package:rider_app/utils/app_colors.dart';
import 'package:rider_app/utils/app_images.dart';
import 'package:rider_app/views/widgets/circle_avatar.dart';
import 'package:rider_app/views/widgets/text.dart';

class SecondaryField extends StatelessWidget {
  bool? secondaryField;
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

  SecondaryField(
      {Key? key,
      this.secondaryField = false,
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
        MyText(
          text: title!,
          fontSize: 12,
          color: MyColor.lightBlack,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 1.h),
        Container(
          height: 47.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            // color: Colors.white,
          ),
          child: TextFormField(
            // readOnly: readOnly,
            // autofocus: false,
            // controller: controller,
            obscureText: obscureText!,
            // keyboardType: keyboardType,
            // textInputAction: textInputAction,
            // onSaved: onSaved,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            // focusNode: FocusNode(),
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 0.h, horizontal: 13.w),
              filled: true,
              fillColor: MyColor.lightBlue,

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
      borderSide: const BorderSide(
        color: Colors.white,
        width: 1,
      ),
    );
  }

  enabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.r),
      borderSide: const BorderSide(
        color: Colors.white,
        width: 1,
      ),
    );
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
      color: Colors.white,
    );
  }

  void dissmissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  final textFieldController = Get.put(TextFieldController());
}
