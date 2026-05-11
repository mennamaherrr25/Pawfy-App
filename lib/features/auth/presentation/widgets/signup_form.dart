import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/constants/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/custom_button.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/divider_with_text.dart.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/signup_fields.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/social_login_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.r)),
      color: AppColors.background,
      child: Padding(
        padding: EdgeInsets.all(26.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SignUpFields(),
            CustomButton(
              onPressed: () {},
              textWidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextWidget(
                    text: 'Sign Up',
                    style: AppTextStyles.s18rPlaypenSans().copyWith(
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Icon(Icons.start, color: Colors.white),
                  ),
                ],
              ),
              backgroundColor: AppColors.primaryLight,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.h),
              child: DividerWithText(text: 'OR'),
            ),
            SocialLoginButton(),
          ],
        ),
      ),
    );
  }
}
