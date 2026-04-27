import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/routing/app_routes.dart';
import 'package:pawfy_app/features/auth/presentation/views/login_view.dart';
import 'package:pawfy_app/features/on_boarding/presentation/views/splash_view.dart';
import 'package:pawfy_app/features/on_boarding/presentation/views/onboarding_view.dart';
import 'package:pawfy_app/features/on_boarding/presentation/views/onboarding1.dart';
import 'package:pawfy_app/core/routing/app_router.dart';

void main() {
  runApp(const PawfyApp());
}

class PawfyApp extends StatelessWidget {
  const PawfyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pawfy App',
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
      //home: LoginView(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.splash,
      //SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// بدون () → عشان تبعتي function نفسها
// static → عشان توصلي لها من غير instance