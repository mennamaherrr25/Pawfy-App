import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.hint, this.prefixIcon});

  final Widget? hint;

  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        //  contentPadding: EdgeInsets.only(bottom: ,top: ,left: ),
        prefixIcon: prefixIcon,
        //prefixIconColor:prefixIconColor ,
        hint: hint,
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(999),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(999),
          borderSide: BorderSide(
            color: AppTextColors.secondaryText.withValues(alpha: .1),
          ),
        ),
      ),
    );
  }
}
