import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

class GradientIcon extends StatelessWidget {
  const GradientIcon({super.key, required this.icon});
  final FaIcon icon;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: [
            AppColors.secondaryColor,
            AppColors.primaryColor,
            AppColors.accentColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader((bounds));
      },
      child: Center(child: icon),
    );
  }
}
