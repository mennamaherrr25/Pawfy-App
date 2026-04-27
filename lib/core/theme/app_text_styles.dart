// Titles → Playpen Sans
// Body → Inter
import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

class AppTextStyles {
  //splash //
  //title
  static TextStyle s30bold() {
    return TextStyle(
      color: AppTextColors.primaryText,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'Playpen Sans',
    );
  }

  //body
  static TextStyle s16rInter() {
    return TextStyle(
      color: AppTextColors.primaryText,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontFamily: 'Inter',
      letterSpacing: 1,
    );
  }

  static TextStyle s18rPlaypenSans() {
    return TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.normal,
      fontFamily: 'Playpen Sans',
    );
  }

  //Auth
  static TextStyle s14rw600Inter() {
    return TextStyle(
      color: AppTextColors.secondaryText,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
      //letterSpacing: 1,
    );
  }

  static TextStyle s12rInter() {
    return TextStyle(
      color: AppTextColors.secondaryText,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
      //letterSpacing: 1,
    );
  }

  static TextStyle s16rw600Inter() {
    return TextStyle(
      color: AppTextColors.secondaryText,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
      //letterSpacing: 1,
    );
  }
  // Assuming Inter for body and Playpen Sans for Titles if available,
  // otherwise fallback to default sans-serif.

  static const TextStyle titleLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    fontFamily: 'Playpen Sans',
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    fontFamily: 'Playpen Sans',
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
    fontFamily: 'Inter',
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
    fontFamily: 'Inter',
  );

  static const TextStyle price = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w800,
    color: AppColors.priceColor,
    fontFamily: 'Playpen Sans',
  );

  static TextStyle s14rw400Inter() {
    return TextStyle(
      color: AppTextColors.secondaryText,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter',
      //letterSpacing: 1,
    );
  }

  static const cartTitle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );
  static const cartSubtitle = TextStyle(
    fontSize: 13,
    color: AppColors.textSecondary,
  );
  static const itemName = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  static const itemSubtitle = TextStyle(
    fontSize: 12,
    color: AppColors.textSecondary,
  );
  static const itemPrice = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );
  static const summaryLabel = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary,
  );
  static const summaryValue = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  static const totalLabel = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );
  static const totalValue = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );
  static const checkoutBtn = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    letterSpacing: 0.4,
  );
  static const donateTitle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  static const donateSubtitle = TextStyle(
    fontSize: 11,
    color: AppColors.textSecondary,
    height: 1.4,
  );
}
