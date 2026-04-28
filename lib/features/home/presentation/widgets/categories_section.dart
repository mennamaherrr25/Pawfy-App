import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/features/home/presentation/widgets/category_chip.dart';

class CategoriesSection extends StatelessWidget {
  CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SHOP BY',
                    style: AppTextStyles.bodySmall.copyWith(
                      letterSpacing: 1.2,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Categories',
                    style: AppTextStyles.headlineLarge.copyWith(
                      color: Colors.black87,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Text(
              'See All',
              style: AppTextStyles.labelLarge.copyWith(
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CategoryChip(
                    label: 'Dry Food',
                    icon: Icons.rice_bowl,
                    bgColor: Color(0xFFE9ECC1),
                  ),
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: CategoryChip(
                    label: 'Wet Food',
                    icon: Icons.shopping_basket_outlined,
                    bgColor: Color(0xFFF3CCFB),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Expanded(
                  child: CategoryChip(
                    label: 'Toys',
                    icon: Icons.sports_baseball,
                    bgColor: Color(0xFFA6FFB5),
                  ),
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: CategoryChip(
                    label: 'Accessories',
                    icon: Icons.stroller_outlined,
                    bgColor: Color(0xFFFCF6D6),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
