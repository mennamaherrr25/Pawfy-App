// lib/features/home/presentation/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/features/home/presentation/widgets/home_app_bar.dart';
import 'package:pawfy_app/features/home/presentation/widgets/search_bar_widget.dart';
import 'package:pawfy_app/features/home/presentation/widgets/summer_treats_banner.dart';
import 'package:pawfy_app/features/home/presentation/widgets/best_sellers_section.dart';
import 'package:pawfy_app/features/home/presentation/widgets/categories_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// =========================================================
/// 🏠 HomeScreen - Dashboard Overview
/// =========================================================
/// The landing page of the app, showcasing banners, categories, 
/// and best-selling products. It uses a scrollable layout for 
/// a rich content experience.
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                HomeAppBar(),
                SizedBox(height: 20.h),
                SearchBarWidget(),
                SizedBox(height: 25.h),
                SummerTreatsBanner(),
                SizedBox(height: 30.h),
                BestSellersSection(),
                SizedBox(height: 30.h),
                CategoriesSection(),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
