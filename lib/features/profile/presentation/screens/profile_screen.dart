import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/features/profile/presentation/widgets/profile_menu_item.dart';
import 'package:pawfy_app/features/profile/presentation/widgets/profile_stats_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.pets,
                          color: AppColors.primaryColor,
                          size: 28,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'MyPet',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF333333),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.notifications_none,
                        color: AppColors.primaryColor,
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xFF2A688D),
                        child: Icon(
                          Icons.person,
                          size: 60,
                          color: Color(0xFFFDE4D0),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.backgroundColor,
                            width: 2,
                          ),
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                const Text(
                  'Elena Rodriguez',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF4A4E38),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'elena.rodriguez@example.com',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF6B705C),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 30),

                const Row(
                  children: [
                    Expanded(
                      child: ProfileStatsCard(
                        count: '12',
                        label: 'ORDERS',
                        countColor: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: ProfileStatsCard(
                        count: '3',
                        label: 'PETS',
                        countColor: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                ProfileMenuItem(
                  icon: Icons.shopping_bag_outlined,
                  title: 'My Orders',
                  iconBackgroundColor: const Color(0xFFBEF2D8),
                  iconColor: const Color(0xFF4CAF50),
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.local_florist_outlined,
                  title: 'Pet Profiles',
                  iconBackgroundColor: const Color(0xFFF3E4F8),
                  iconColor: const Color(0xFF9852B4),
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.location_on_outlined,
                  title: 'Saved Addresses',
                  iconBackgroundColor: const Color(0xFFE8F2CE),
                  iconColor: const Color(0xFF758A38),
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.payments_outlined,
                  title: 'Payment Methods',
                  iconBackgroundColor: const Color(0xFFE2DDF8),
                  iconColor: const Color(0xFF7658C9),
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.settings_outlined,
                  title: 'Settings',
                  iconBackgroundColor: const Color(0xFFE8E9E3),
                  iconColor: const Color(0xFF6B705C),
                  onTap: () {},
                ),
                const SizedBox(height: 16),

                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.logout, color: Color(0xFFB93F55)),
                  label: const Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB93F55),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    side: const BorderSide(
                      color: Color(0xFFB93F55),
                      width: 1.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(double.infinity, 56),
                  ),
                ),
                const SizedBox(height: 120),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
