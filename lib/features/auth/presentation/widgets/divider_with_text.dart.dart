import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: AppTextColors.secondaryText,
            thickness: 1,

            // indent: 10,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: CustomTextWidget(text: text, style: AppTextStyles.s12rInter()),
        ),
        Expanded(
          child: Divider(
            color: AppTextColors.secondaryText,
            thickness: 1,
            // indent: 10,
            // indent: 260,
          ),
        ),
      ],
    );
  }
}
