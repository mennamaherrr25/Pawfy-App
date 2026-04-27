import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;

  const QuantitySelector({super.key, this.quantity = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
        color: AppColors.qtyBg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _QtyBtn(icon: Icons.remove),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              '$quantity',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          _QtyBtn(icon: Icons.add),
        ],
      ),
    );
  }
}

class _QtyBtn extends StatelessWidget {
  final IconData icon;
  const _QtyBtn({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withAlpha(30),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, size: 16, color: AppColors.primaryColor),
    );
  }
}
