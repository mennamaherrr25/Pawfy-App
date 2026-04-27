import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';

class DonateCard extends StatelessWidget {
  const DonateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: AppTextColors.cardBg,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppTextColors.divider),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.accentColor.withAlpha(50),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Text('🐶', style: TextStyle(fontSize: 22)),
            ),
          ),
          const SizedBox(width: 12),

          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add a small gift for a shelter pet?',
                  style: AppTextStyles.donateTitle,
                ),
                SizedBox(height: 3),
                Text(
                  'Your contribution supports\nlocal rescue shelters.',
                  style: AppTextStyles.donateSubtitle,
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Add',
              style: TextStyle(
                fontSize: 13,
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
