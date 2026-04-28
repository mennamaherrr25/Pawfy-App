import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';

class DividerWithText extends StatelessWidget {
  DividerWithText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: AppColors.secondaryText,
            thickness: 1.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: CustomTextWidget(text: text, style: AppTextStyles.s12rInter()),
        ),
        Expanded(
          child: Divider(
            color: AppColors.secondaryText,
            thickness: 1.h,
          ),
        ),
      ],
    );
  }
}
