// lib/features/home/presentation/widgets/categories_section.dart
import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/features/home/presentation/widgets/category_chip.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SHOP BY',
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1.2,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Text(
              'See All',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            Row(
              children: [
                const Expanded(child: CategoryChip(label: 'Dry Food', icon: Icons.rice_bowl, bgColor: Color(0xFFE9ECC1))),
                const SizedBox(width: 15),
                const Expanded(child: CategoryChip(label: 'Wet Food', icon: Icons.shopping_basket_outlined, bgColor: Color(0xFFF3CCFB))),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Expanded(child: CategoryChip(label: 'Toys', icon: Icons.sports_baseball, bgColor: Color(0xFFA6FFB5))),
                const SizedBox(width: 15),
                const Expanded(child: CategoryChip(label: 'Accessories', icon: Icons.stroller_outlined, bgColor: Color(0xFFFCF6D6))),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
