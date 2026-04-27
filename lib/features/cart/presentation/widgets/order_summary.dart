import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';

class OrderSummary extends StatelessWidget {
  final double subtotal;
  final bool freeShipping;
  final double total;

  const OrderSummary({
    super.key,
    required this.subtotal,
    required this.total,
    this.freeShipping = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          _Row(label: 'Subtotal', value: '\$${subtotal.toStringAsFixed(2)}'),
          const SizedBox(height: 10),
          _Row(
            label: 'Shipping',
            value: freeShipping
                ? 'FREE'
                : '\$${(total - subtotal).toStringAsFixed(2)}',
            valueColor: freeShipping ? AppColors.accentColor : null,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Divider(color: AppColors.divider, height: 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total', style: AppTextStyles.totalLabel),
              Text(
                '\$${total.toStringAsFixed(2)}',
                style: AppTextStyles.totalValue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;

  const _Row({required this.label, required this.value, this.valueColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppTextStyles.summaryLabel),
        Text(
          value,
          style: AppTextStyles.summaryValue.copyWith(
            color: valueColor ?? AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}
