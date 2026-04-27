import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/routing/app_routes.dart';
import 'package:pawfy_app/core/routing/app_router.dart';
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
        scaffoldBackgroundColor: AppColors.backgroundColor,
        fontFamily: 'Inter',
      ),
      // home: const CategoryScreen(),
      //home: LoginView(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.splash,
      //SplashView(),
    
    );
  }
}

// بدون () → عشان تبعتي function نفسها
// static → عشان توصلي لها من غير instance