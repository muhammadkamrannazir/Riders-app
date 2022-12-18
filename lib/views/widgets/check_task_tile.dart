import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rider_app/utils/app_colors.dart';
import 'package:rider_app/views/widgets/text.dart';

class CheckTaskTile extends StatelessWidget {
  final String title;
  final bool status;
  final bool value;
  final bool? selected;
  void Function(bool?)? onChanged;
  CheckTaskTile({
    required this.value,
    required this.title,
    required this.status,
    this.selected,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      // tileColor: MyColor.fillColor,
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      controlAffinity: ListTileControlAffinity.leading,
      value: value,
      selected: value,
      onChanged: onChanged,
      secondary: status == true
          ? MyText(
              text: 'Deliver',
              color: Colors.blue,
            )
          : MyText(
              text: 'Pending',
              color: Colors.red,
            ),
      title: MyText(
        text: title,
        fontSize: 12.sp,
        color: Colors.grey,
        textAlign: TextAlign.start,
      ),
    );
  }
}
