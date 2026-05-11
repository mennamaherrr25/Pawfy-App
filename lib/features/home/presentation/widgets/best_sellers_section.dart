import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/constants/app_text_styles.dart';
import 'package:pawfy_app/features/home/presentation/widgets/product_card.dart';

class BestSellersSection extends StatelessWidget {
  BestSellersSection({super.key});

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
                    'TOP RATED',
                    style: AppTextStyles.bodySmall.copyWith(
                      letterSpacing: 1.2,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Best Sellers',
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
        SizedBox(
          height: 280.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ProductCard(
                title: 'Premium Dry Kibble',
                subtitle: 'Organic Grain-Free',
                price: '\$45.99',
                imagePath:
                    'assets/images/products/AB6AXuCpYDI89GqDFYasoqlmYmGWvmr284wm5b-AuQFOGnN3zos_CGDox-Xcyk6-_ddpHEBAcN1Mn7CnRsd4ErC7Z-lZcOrYr9LVRdO_65VaGXHGkB67szknQg1bLJygCBF7bqW3W42EWe5uEJk4n575bp2Adomz6jfsAEcTlxUFxGlabrzxOr_v1BOQSo26LzPMDlUTdS0.png',
              ),
              SizedBox(width: 15.w),
              ProductCard(
                title: 'Tough Rope',
                subtitle: 'Indestructible',
                price: '\$12.50',
                imagePath:
                    'assets/images/products/AB6AXuBcGq4hc3R4QdDnLHHjxrhBLYwJgxnQoch32zk3heOBmBW9lkDsLD2kZStHUfq6Z74-w1hytMuDZWvqUzQERa_OjsnNT959pn3mlfB6mG9mDbaroGp1WDjf0HjF8w90QHPXGj1APrvfBH-O6_2CGVsbj34pblU5C9wjuGtb-HZ8fHfwbqjBcdB.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
