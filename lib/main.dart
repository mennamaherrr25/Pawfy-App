import 'package:flutter/material.dart';
import 'core/theme/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/routing/app_routes.dart';
import 'package:pawfy_app/core/routing/app_router.dart';

void main() {
  runApp(PawfyApp());
}

class PawfyApp extends StatelessWidget {
  PawfyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 915),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Pawfy App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.background,
            fontFamily: 'Inter',
            textTheme: AppTypographyTheme.textTheme,
          ),
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: AppRoutes.splash,
        );
      },
    );
  }
}

// بدون () → عشان تبعتي function نفسها
// static → عشان توصلي لها من غير instance
