import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/constants/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderSummary extends StatelessWidget {
  final double subtotal;
  final bool freeShipping;
  final double total;

  OrderSummary({
    super.key,
    required this.subtotal,
    required this.total,
    this.freeShipping = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      padding: EdgeInsets.all(18.r),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(28.r),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          _Row(label: 'Subtotal', value: '\$${subtotal.toStringAsFixed(2)}'),
          SizedBox(height: 10.h),
          _Row(
            label: 'Shipping',
            value: freeShipping
                ? 'FREE'
                : '\$${(total - subtotal).toStringAsFixed(2)}',
            valueColor: freeShipping ? AppColors.accentColor : null,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 14.h),
            child: Divider(color: AppColors.divider, height: 1.h),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total', style: AppTextStyles.totalLabel),
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
