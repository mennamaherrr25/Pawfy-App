import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';

/// name for the last component of a view
class AuthFooter extends StatelessWidget {
  const AuthFooter({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.text,
    this.textStyle,
    this.buttonTextStyle,
  });
  final void Function() onPressed;
  final String buttonText;
  final String text;
  final TextStyle? textStyle;
  final TextStyle? buttonTextStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextWidget(
          text: text,
          style: textStyle ?? AppTextStyles.s14rw600Inter(),
        ),
        ShaderMask(
          shaderCallback: (Rect bounds) => LinearGradient(
            colors: [
              AppColors.secondaryColor,
              AppColors.primaryColor,
              AppColors.accentColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds),
          child: TextButton(
            onPressed: onPressed,
            child: CustomTextWidget(
              text: buttonText,
              style:
                  buttonTextStyle ??
                  AppTextStyles.s14rw600Inter().copyWith(
                    color: AppColors.primaryColor,
                  ),
            ),
          ),

          // child: TextButton(
          //   onPressed: onPressed,
          //   child: CustomTextWidget(
          //     text: buttonText,
          //     style:
          //         buttonTextStyle ??
          //         AppTextStyles.s14rw600Inter().copyWith(
          //           color: AppColors.primaryColor,
          //         ),
          //   ),
          // ),
        ),
      ],
    );
  }
}
