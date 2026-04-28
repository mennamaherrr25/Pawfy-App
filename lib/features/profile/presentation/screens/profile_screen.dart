import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/features/profile/presentation/widgets/profile_menu_item.dart';
import 'package:pawfy_app/features/profile/presentation/widgets/profile_stats_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// =========================================================
/// 👤 ProfileScreen - User Account Settings
/// =========================================================
/// Displays user information, order history, and account settings.
/// Refactored into smaller sub-widgets for optimal performance.
class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.h),
                const _ProfileHeader(),
                SizedBox(height: 30.h),
                const _ProfileAvatar(),
                SizedBox(height: 20.h),
                const _ProfileInfo(),
                SizedBox(height: 30.h),
                const _ProfileStats(),
                SizedBox(height: 30.h),

                ProfileMenuItem(
                  icon: Icons.shopping_bag_outlined,
                  title: 'My Orders',
                  iconBackgroundColor: Color(0xFFBEF2D8),
                  iconColor: Color(0xFF4CAF50),
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.local_florist_outlined,
                  title: 'Pet Profiles',
                  iconBackgroundColor: Color(0xFFF3E4F8),
                  iconColor: Color(0xFF9852B4),
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.location_on_outlined,
                  title: 'Saved Addresses',
                  iconBackgroundColor: Color(0xFFE8F2CE),
                  iconColor: Color(0xFF758A38),
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.payments_outlined,
                  title: 'Payment Methods',
                  iconBackgroundColor: Color(0xFFE2DDF8),
                  iconColor: Color(0xFF7658C9),
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.settings_outlined,
                  title: 'Settings',
                  iconBackgroundColor: Color(0xFFE8E9E3),
                  iconColor: Color(0xFF6B705C),
                  onTap: () {},
                ),
                SizedBox(height: 16.h),

                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.logout, color: Color(0xFFB93F55)),
                  label: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB93F55),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    side: BorderSide(
                      color: Color(0xFFB93F55),
                      width: 1.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    minimumSize: Size(double.infinity, 56),
                  ),
                ),
                SizedBox(height: 120.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.pets,
              color: AppColors.primary,
              size: 28.sp,
            ),
            SizedBox(width: 8.w),
            Text(
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
          icon: Icon(
            Icons.notifications_none,
            color: AppColors.primary,
            size: 28.sp,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(4.r),
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
          child: CircleAvatar(
            radius: 50.r,
            backgroundColor: Color(0xFF2A688D),
            child: Icon(
              Icons.person,
              size: 60.sp,
              color: Color(0xFFFDE4D0),
            ),
          ),
        ),
        Positioned(
          bottom: 0.h,
          right: 0.w,
          child: Container(
            padding: EdgeInsets.all(6.r),
            decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.background,
                width: 2.w,
              ),
            ),
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}

class _ProfileInfo extends StatelessWidget {
  const _ProfileInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Elena Rodriguez',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: Color(0xFF4A4E38),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          'elena.rodriguez@example.com',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF6B705C),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _ProfileStats extends StatelessWidget {
  const _ProfileStats();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ProfileStatsCard(
            count: '12',
            label: 'ORDERS',
            countColor: AppColors.primary,
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: ProfileStatsCard(
            count: '3',
            label: 'PETS',
            countColor: AppColors.primary,
          ),
        ),
      ],
    );
  }
}

