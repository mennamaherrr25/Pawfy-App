import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/constants/app_text_styles.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/auth_footer.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/auth_header.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/signup_form.dart';

/// =========================================================
/// 📝 SignupView - Account Registration
/// =========================================================
/// Allows new users to create an account. Features a modern, 
/// clean design with clear input validation (implemented via SignupForm).
class SignupView extends StatelessWidget {
  SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background2,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primaryLight,
              AppColors.primary,
              AppColors.background,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SignUpBody(),
          ),
        ),
      ),
    );
  }
}

class SignUpBody extends StatelessWidget {
  SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.r),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 30.h),
            child: AuthHeader(
              title: 'Join Pawfy',
              subTitle:
                  'Start your journey into a premium sanctuary for your best friends.',
            ),
          ),
          SignUpForm(),
          AuthFooter(
            onPressed: () {
              Navigator.pop(context);
            },
            buttonText: 'Login',
            buttonTextStyle: AppTextStyles.s14rw600Inter().copyWith(
              color: AppColors.primaryLight,
            ),
            text: 'Already have an account?',
          ),
        ],
      ),
    );
  }
}
