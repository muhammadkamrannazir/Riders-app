import 'package:flutter/material.dart';

class MyCircularImg extends StatelessWidget {
  String AssetPath;
  double height;
  double width;
  MyCircularImg({
    required this.AssetPath,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CircleAvatar(
        backgroundImage: AssetImage(AssetPath),
      ),
    );
  }
}
