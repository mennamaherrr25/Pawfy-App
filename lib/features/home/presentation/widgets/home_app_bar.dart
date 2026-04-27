import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.pets, color: AppColors.primaryColor, size: 24),
            const SizedBox(width: 8),
            Text(
              'MyPet',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Color(0xFF2C2C2C),
              ),
            ),
          ],
        ),
        const Icon(Icons.notifications_none, color: AppColors.primaryColor),
      ],
    );
  }
}
