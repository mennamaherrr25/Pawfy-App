// lib/features/home/presentation/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/features/home/presentation/widgets/home_app_bar.dart';
import 'package:pawfy_app/features/home/presentation/widgets/search_bar_widget.dart';
import 'package:pawfy_app/features/home/presentation/widgets/summer_treats_banner.dart';
import 'package:pawfy_app/features/home/presentation/widgets/best_sellers_section.dart';
import 'package:pawfy_app/features/home/presentation/widgets/categories_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 10),
                HomeAppBar(),
                SizedBox(height: 20),
                SearchBarWidget(),
                SizedBox(height: 25),
                SummerTreatsBanner(),
                SizedBox(height: 30),
                BestSellersSection(),
                SizedBox(height: 30),
                CategoriesSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
