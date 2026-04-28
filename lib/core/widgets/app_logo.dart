import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLogo extends StatelessWidget {
  AppLogo({this.width = 24, this.height = 24, super.key});
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/paw.png",
      width: width?.w,
      height: height?.h,
    );
  }
}
