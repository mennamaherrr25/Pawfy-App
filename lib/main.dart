import 'package:flutter/material.dart';
import 'package:pawfy_app/core/theme/app_colors.dart';
import 'package:pawfy_app/feature/category/view/category_screen.dart';
import 'package:pawfy_app/feature/product_details/view/product_details_screen.dart';

void main() {
  runApp(const PawfyApp());
}

class PawfyApp extends StatelessWidget {
  const PawfyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pawfy App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Inter',
      ),
      // home: const CategoryScreen(),
      home: ProductDetailsScreen(),
    );
  }
}
