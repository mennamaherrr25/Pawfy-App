import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

/// =========================================================
/// APP TYPOGRAPHY SYSTEM (Pawfy Optimized)
/// =========================================================

/// =========================================================
/// ✍️ AppTextStyles - Typography System
/// =========================================================
/// Defines all text styles used in the app, organized by hierarchy
/// (Display, Headline, Body, Label).
class AppTextStyles {
  AppTextStyles._();

  /// =========================
  /// HEADINGS (Display / Titles) - Playpen Sans
  /// =========================

  static TextStyle get displayLarge => TextStyle(
        fontSize: 34.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'Playpen Sans',
        color: AppColors.textPrimary,
      );

  static TextStyle get displayMedium => TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'Playpen Sans',
        color: AppColors.textPrimary,
      );

  static TextStyle get displaySmall => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'Playpen Sans',
        color: AppColors.textPrimary,
      );

  static TextStyle get headlineLarge => TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'Playpen Sans',
        color: AppColors.textPrimary,
      );

  static TextStyle get headlineMedium => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        fontFamily: 'Playpen Sans',
        color: AppColors.textPrimary,
      );

  static TextStyle get headlineSmall => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        fontFamily: 'Playpen Sans',
        color: AppColors.textPrimary,
      );

  /// =========================
  /// BODY TEXT - Inter
  /// =========================

  static TextStyle get bodyLarge => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
        fontFamily: 'Inter',
        color: AppColors.textSecondary,
      );

  static TextStyle get bodyMedium => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        fontFamily: 'Inter',
        color: AppColors.textSecondary,
      );

  static TextStyle get bodySmall => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
        fontFamily: 'Inter',
        color: AppColors.textSecondary,
      );

  /// =========================
  /// LABELS & SPECIAL
  /// =========================

  static TextStyle get labelLarge => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
        color: AppColors.primary,
      );

  static TextStyle get price => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w800,
        fontFamily: 'Playpen Sans',
        color: AppColors.price,
      );

  static TextStyle get caption => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
        color: Colors.grey,
      );

  /// =========================
  /// SPECIFIC COMPONENTS
  /// =========================
  static TextStyle get cartTitle => displayLarge.copyWith(fontSize: 26.sp, fontWeight: FontWeight.w800);
  static TextStyle get cartSubtitle => bodyMedium.copyWith(fontSize: 13.sp);
  static TextStyle get itemName => bodyMedium.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get itemSubtitle => bodySmall;
  static TextStyle get itemPrice => bodyMedium.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w700);
  static TextStyle get summaryLabel => bodyMedium;
  static TextStyle get summaryValue => bodyMedium.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get totalLabel => bodyLarge.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get totalValue => displaySmall.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w800);
  static TextStyle get checkoutBtn => labelLarge.copyWith(fontSize: 15.sp, color: Colors.white);
  static TextStyle get donateTitle => bodyMedium.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w600);
  static TextStyle get donateSubtitle => bodySmall.copyWith(fontSize: 11.sp, height: 1.4);

  /// =========================
  /// LEGACY MAPPINGS (To avoid immediate breaks)
  /// =========================
  static TextStyle s30bold() => displayLarge;
  static TextStyle s16rInter() => bodyLarge;
  static TextStyle s18rPlaypenSans() => headlineSmall;
  static TextStyle s14rw600Inter() => bodyMedium.copyWith(fontWeight: FontWeight.w600);
  static TextStyle s14rw400Inter() => bodyLarge.copyWith(fontWeight: FontWeight.w500);
  static TextStyle s12rInter() => bodySmall;
  static TextStyle s16rw600Inter() => bodyLarge.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get titleLarge => headlineLarge;
  static TextStyle get titleMedium => headlineMedium;
}

class AppTypographyTheme {
  static TextTheme get textTheme => TextTheme(
        displayLarge: AppTextStyles.displayLarge,
        displayMedium: AppTextStyles.displayMedium,
        displaySmall: AppTextStyles.displaySmall,
        headlineLarge: AppTextStyles.headlineLarge,
        headlineMedium: AppTextStyles.headlineMedium,
        headlineSmall: AppTextStyles.headlineSmall,
        bodyLarge: AppTextStyles.bodyLarge,
        bodyMedium: AppTextStyles.bodyMedium,
        bodySmall: AppTextStyles.bodySmall,
        labelLarge: AppTextStyles.labelLarge,
      );
}

