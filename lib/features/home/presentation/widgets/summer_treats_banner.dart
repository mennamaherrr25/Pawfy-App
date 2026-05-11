import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/constants/app_text_styles.dart';

class SummerTreatsBanner extends StatelessWidget {
  SummerTreatsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFD2BAFF),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Padding(
            padding: EdgeInsets.all(24.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Summer\nTreats for\nHappy\nPaws',
                  style: AppTextStyles.headlineLarge.copyWith(
                    color: Color(0xFF4A3473),
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Up to 30% off selected\norganic brands.',
                  style: AppTextStyles.bodySmall.copyWith(color: Color(0xFF5A448A)),
                ),
                SizedBox(height: 16.h),
                GestureDetector(
                  onTap: () {
                    // TODO: Navigate to products screen
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Text(
                      'Shop Now',
                      style: AppTextStyles.labelLarge.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -2.w,
            bottom: -15.h,
            child: Container(
              width: 120.r,
              height: 120.r,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.background, width: 6.r),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.r),
                  topRight: Radius.circular(100.r),
                  bottomLeft: Radius.circular(100.r),
                  bottomRight: Radius.circular(60.r),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/Cute Golden Retriever.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
