import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
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
}
