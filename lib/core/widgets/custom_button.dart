import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.textWidget,
    required this.backgroundColor,
  });
  final void Function()? onPressed;
  final Widget textWidget;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 64,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
        onPressed: onPressed,
        child: textWidget,
      ),
    );
  }
}
