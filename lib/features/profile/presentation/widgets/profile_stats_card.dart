import 'package:flutter/material.dart';

class ProfileStatsCard extends StatelessWidget {
  final String count;
  final String label;
  final Color countColor;

  const ProfileStatsCard({
    super.key,
    required this.count,
    required this.label,
    required this.countColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8E3),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Text(
            count,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: countColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF6B705C),
              letterSpacing: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
