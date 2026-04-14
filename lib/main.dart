import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

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
      theme: ThemeData(
       scaffoldBackgroundColor: AppColors.backgroundColor
 
      ),
    );
  }
}
