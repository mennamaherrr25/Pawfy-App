import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget {
  HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.pets, color: AppColors.primary, size: 24.sp),
            SizedBox(width: 8.w),
            Text(
              'MyPet',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w900,
                color: Color(0xFF2C2C2C),
              ),
            ),
          ],
        ),
        Icon(Icons.notifications_none, color: AppColors.primary),
      ],
    );
  }
}

