import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';

import 'quantity_selector.dart';

class CartItemCard extends StatelessWidget {
  final String name;
  final String subtitle;
  final double price;
  final int quantity;
  final String emoji;
  final String? badge;

  const CartItemCard({
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        color: AppTextColors.cardBg,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: AppTextColors.divider),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Thumbnail(emoji: emoji, badge: badge),
            const SizedBox(width: 14),

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
                            const SizedBox(height: 2),
                            Text(subtitle, style: AppTextStyles.itemSubtitle),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '\$${(price * quantity).toStringAsFixed(2)}',
                        style: AppTextStyles.itemPrice,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      QuantitySelector(quantity: quantity),

                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color:AppTextColors.removeRed.withAlpha(30),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.delete_outline_rounded,
                          size: 16,
                          color: AppTextColors.removeRed,
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
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Text(emoji, style: const TextStyle(fontSize: 34)),
          ),
        ),
        if (badge != null)
          Positioned(
            top: -6,
            right: -6,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: AppTextColors.badgeSale,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                badge!,
                style: const TextStyle(
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
