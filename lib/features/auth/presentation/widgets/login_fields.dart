import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/custom_text_form_field.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 12, top: 8),
          child: CustomTextWidget(
            text: 'Email',
            style: AppTextStyles.s14rw600Inter(),
          ),
        ),
        CustomTextFormField(
          hint: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: CustomTextWidget(
              text: 'hello@mypet.com',
              style: AppTextStyles.s14rw400Inter(),
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12, left: 22),
            child: FaIcon(
              FontAwesomeIcons.envelope,
              size: 20,
              color: AppTextColors.secondaryText,
            ),
          ),
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: CustomTextWidget(
                text: 'Password',
                style: AppTextStyles.s14rw600Inter(),
              ),
            ),
            Spacer(flex: 1),
            TextButton(
              onPressed: () {},
              child: CustomTextWidget(
                text: 'Forgot ?',
                style: AppTextStyles.s14rw600Inter().copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: CustomTextFormField(
            hint: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: CustomTextWidget(
                text: '••••••••',
                style: AppTextStyles.s14rw400Inter(),
              ),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12, left: 22),
              child: Icon(
                Icons.lock_outline_rounded,
                size: 24,
                color: AppTextColors.secondaryText,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
