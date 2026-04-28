import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/app_logo.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';

class OnboardingPage1 extends StatelessWidget {
  OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryLight, AppColors.primary],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 14.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
                SizedBox(height: 48.h),
                Container(
                  width: 200.r,
                  height: 200.r,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10.r,
                      color: Colors.white70.withValues(alpha: .2),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/splachnobg.png',
                      width: 140.r,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 32.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextWidget(
                      text: 'Welcome to Pawfy',
                      style: AppTextStyles.displayLarge.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: CustomTextWidget(
                        text:
                            'Everything your furry friends need, delivered right to your door',
                        style: AppTextStyles.bodyLarge.copyWith(
                          color: AppColors.background,
                        ),
                        textAlign: TextAlign.center,
                        maxlines: 4,
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
