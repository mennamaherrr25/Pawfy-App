import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/custom_text_form_field.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';

class LoginFields extends StatelessWidget {
  LoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10.h, left: 12.w, top: 8.h),
          child: CustomTextWidget(
            text: 'Email',
            style: AppTextStyles.s14rw600Inter(),
          ),
        ),
        CustomTextFormField(
          hint: Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: CustomTextWidget(
              text: 'hello@mypet.com',
              style: AppTextStyles.s14rw400Inter(),
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 22.w),
            child: FaIcon(
              FontAwesomeIcons.envelope,
              size: 20.sp,
              color: AppColors.secondaryText,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: CustomTextWidget(
                text: 'Password',
                style: AppTextStyles.s14rw600Inter(),
              ),
            ),
            Spacer(flex: 1),
            TextButton(
              onPressed: () {},
              child: CustomTextWidget(
                text: 'Forgot ?',
                style: AppTextStyles.s14rw600Inter().copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 24.h),
          child: CustomTextFormField(
            hint: Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: CustomTextWidget(
                text: '••••••••',
                style: AppTextStyles.s14rw400Inter(),
              ),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 22.w),
              child: Icon(
                Icons.lock_outline_rounded,
                size: 24.sp,
                color: AppColors.secondaryText,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
