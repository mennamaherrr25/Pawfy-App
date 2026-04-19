import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

class SummerTreatsBanner extends StatelessWidget {
  const SummerTreatsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFD2BAFF),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Summer\nTreats for\nHappy\nPaws',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4A3473),
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Up to 30% off selected\norganic brands.',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xFF5A448A),
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    // TODO: Navigate to products screen
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -2,
            bottom: -15,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.backgroundColor, width: 6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(60),
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/images/Cute Golden Retriever.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
