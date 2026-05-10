// Titles → Playpen Sans
// Body → Inter
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

class AppTextStyles {
   static const cartTitle = TextStyle(
    fontSize: 26, fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );
  static const cartSubtitle = TextStyle(
    fontSize: 13, color: AppColors.textSecond,
  );
  static const itemName = TextStyle(
    fontSize: 14, fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  static const itemSubtitle = TextStyle(
    fontSize: 12, color: AppColors.textSecond,
  );
  static const itemPrice = TextStyle(
    fontSize: 15, fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );
  static const summaryLabel = TextStyle(
    fontSize: 14, color: AppColors.textSecond,
  );
  static const summaryValue = TextStyle(
    fontSize: 14, fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  static const totalLabel = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );
  static const totalValue = TextStyle(
    fontSize: 20, fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );
  static const checkoutBtn = TextStyle(
    fontSize: 15, fontWeight: FontWeight.w700,
    color: Colors.white, letterSpacing: 0.4,
  );
  static const donateTitle = TextStyle(
    fontSize: 13, fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  static const donateSubtitle = TextStyle(
    fontSize: 11, color: AppColors.textSecond, height: 1.4,
  );

   static TextStyle get favSectionTitle => TextStyle(
    fontSize: 18.sp, fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );
 
  static TextStyle get favItemName => TextStyle(
    fontSize: 13.sp, fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
 
  static TextStyle get favItemSubtitle => TextStyle(
    fontSize: 11.sp, color: AppColors.textSecond,
  );
 
  static TextStyle get favItemPrice => TextStyle(
    fontSize: 14.sp, fontWeight: FontWeight.w800,
    color: AppColors.primaryColor,
  );
 
  static TextStyle get emptyStateTitle => TextStyle(
    fontSize: 20.sp, fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );
 
  static TextStyle get emptyStateSubtitle => TextStyle(
    fontSize: 14.sp, color: AppColors.textSecond,
    height: 1.5,
  );

  
  static TextStyle get logoText => TextStyle(
    fontSize: 18.sp, fontWeight: FontWeight.w800,
    color: AppColors.textPrimary, letterSpacing: 0.5,
  );
}
