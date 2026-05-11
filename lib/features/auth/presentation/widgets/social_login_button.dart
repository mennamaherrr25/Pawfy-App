import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/constants/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';
import 'package:pawfy_app/core/widgets/gradient_icon.dart';

class SocialLoginButton extends StatelessWidget {
  SocialLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(99.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientIcon(
            icon: FaIcon(
              FontAwesomeIcons.google,
              color: Colors.white,
              size: 20.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: CustomTextWidget(
              text: 'Login with Google',
              style: AppTextStyles.s16rw600Inter().copyWith(
                color: AppColors.primaryText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
