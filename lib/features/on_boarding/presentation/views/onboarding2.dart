import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/constants/app_images.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/app_logo.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.lightpurple, AppColors.primaryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: w * 0.28,
                  height: h * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.white70.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppLogo(),
                      CustomTextWidget(
                        text: 'Pawfy',
                        style: AppTextStyles.s18rPlaypenSans(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: h * 0.03),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(AppImages.onboarding),
                ),
                SizedBox(height: h * 0.02),
                CustomTextWidget(
                  text: 'Fast Delivery &\n Premium Quality',
                  style: AppTextStyles.s30bold().copyWith(
                    fontSize: w * 0.07,
                    color: AppTextColors.onPrimary,
                  ),
                  textAlign: TextAlign.center,
                  maxlines: 2,
                ),

                //  Spacer(flex: 1),
                SizedBox(height: h * 0.03),
                CustomTextWidget(
                  text:
                      'We deliver the best products to your doorstep in record time.',
                  style: AppTextStyles.s16rInter().copyWith(
                    fontSize: w * 0.045,
                    color: AppColors.backgroundColor,
                  ),
                  textAlign: TextAlign.center,
                  maxlines: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
