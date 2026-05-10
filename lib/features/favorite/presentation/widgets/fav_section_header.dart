

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';


class FavSectionHeader extends StatelessWidget {
  final int count;
  final VoidCallback? onSort;

  const FavSectionHeader({
    super.key,
    required this.count,
    this.onSort,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$count ',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primaryColor,
                  ),
                ),
                TextSpan(
                  text: 'items saved',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecond,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onSort,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.w, vertical: 6.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: AppColors.divider),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.sort_rounded,
                    size: 14.r,
                    color: AppColors.textSecond,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Sort',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textSecond,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}