import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';

import 'quantity_selector.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItemCard extends StatelessWidget {
  final String name;
  final String subtitle;
  final double price;
  final int quantity;
  final String emoji;
  final String? badge;

  CartItemCard({
    super.key,
    required this.name,
    required this.subtitle,
    required this.price,
    required this.quantity,
    required this.emoji,
    this.badge,
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(28.r),
          border: Border.all(color: AppColors.divider),
        ),
        child: Padding(
          padding: EdgeInsets.all(14.r),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Thumbnail(emoji: emoji, badge: badge),
              SizedBox(width: 14.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name, style: AppTextStyles.itemName),
                              SizedBox(height: 2.h),
                              Text(subtitle, style: AppTextStyles.itemSubtitle),
                            ],
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          '\$${(price * quantity).toStringAsFixed(2)}',
                          style: AppTextStyles.itemPrice,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        QuantitySelector(quantity: quantity),

                        Container(
                          width: 32.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            color:AppColors.error.withAlpha(30),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Icon(
                            Icons.delete_outline_rounded,
                            size: 16.sp,
                            color: AppColors.error,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// ── Sub-widget: Thumbnail ────────────────────────────────────

class _Thumbnail extends StatelessWidget {
  final String emoji;
  final String? badge;

  const _Thumbnail({required this.emoji, this.badge});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 72.w,
          height: 72.h,
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(14.r),
          ),
          child: Center(
            child: Text(emoji, style: TextStyle(fontSize: 34)),
          ),
        ),
        if (badge != null)
          Positioned(
            top: -6,
            right: -6,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: AppColors.sale,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Text(
                badge!,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  letterSpacing: 0.3,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

