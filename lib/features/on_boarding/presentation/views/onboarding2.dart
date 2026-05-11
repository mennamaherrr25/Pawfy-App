import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/constants/app_images.dart';
import 'package:pawfy_app/core/constants/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/app_logo.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';

class OnboardingPage2 extends StatelessWidget {
  OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryLight, AppColors.primary],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 14.h),
            child: Column(
              children: [
                Container(
                  width: 110.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Colors.white70.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppLogo(),
                      CustomTextWidget(
                        text: 'Pawfy',
                        style: AppTextStyles.headlineSmall,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.only(left: 14.w),
                  child: Image.asset(AppImages.onboarding, height: 200.h),
                ),
                SizedBox(height: 16.h),
                CustomTextWidget(
                  text: 'Fast Delivery &\n Premium Quality',
                  style: AppTextStyles.displayLarge.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  maxlines: 2,
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: CustomTextWidget(
                    text:
                        'We deliver the best products to your doorstep in record time.',
                    style: AppTextStyles.bodyLarge.copyWith(
                      color: AppColors.background,
                    ),
                    textAlign: TextAlign.center,
                    maxlines: 4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
