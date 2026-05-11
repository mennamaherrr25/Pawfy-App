import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/custom_text_form_field.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';

class SignUpFields extends StatelessWidget {
  SignUpFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 8.h, left: 12.w),
          child: CustomTextWidget(
            text: 'Full NAME',
            style: AppTextStyles.s14rw600Inter(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 24.h),
          child: CustomTextFormField(
            hint: Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: CustomTextWidget(
                text: 'Enter your name',
                style: AppTextStyles.s14rw400Inter(),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.h, left: 12.w),
          child: CustomTextWidget(
            text: 'Email',
            style: AppTextStyles.s14rw600Inter(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 24.h),
          child: CustomTextFormField(
            hint: Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: CustomTextWidget(
                text: 'hello@mypet.com',
                style: AppTextStyles.s14rw400Inter(),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 12.w,
                bottom: 8.h,
              ),
              child: CustomTextWidget(
                text: 'PASSWORD',
                style: AppTextStyles.s14rw600Inter(),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 24.h),
          child: CustomTextFormField(
            hint: Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: CustomTextWidget(
                text: 'Min. 8 characters',
                style: AppTextStyles.s14rw400Inter(),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.h, left: 12.w),
          child: CustomTextWidget(
            text: 'PHONE NUMBER',
            style: AppTextStyles.s14rw600Inter(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 24.h),
          child: CustomTextFormField(
            hint: Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: CustomTextWidget(
                text: '+20 10 0000 0000',
                style: AppTextStyles.s14rw400Inter(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
