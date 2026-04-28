import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({super.key, this.hint, this.prefixIcon});

  final Widget? hint;

  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primary,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        prefixIcon: prefixIcon,
        label: hint,
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(999.r),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(999.r),
          borderSide: BorderSide(
            color: AppColors.secondaryText.withValues(alpha: .1),
          ),
        ),
      ),
    );
  }
}
