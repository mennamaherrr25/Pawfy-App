import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';


class FavEmptyState extends StatelessWidget {
  const FavEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: AppColors.surface,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text('💔', style: TextStyle(fontSize: 44.sp)),
            ),
          ),
          SizedBox(height: 20.h),
          Text('No Favourites Yet', style: AppTextStyles.emptyStateTitle),
          SizedBox(height: 8.h),
          Text(
            'Start exploring and save the\nproducts you love here!',
            style: AppTextStyles.emptyStateSubtitle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 28.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 28.w, vertical: 14.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Text(
              'Explore Products',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}