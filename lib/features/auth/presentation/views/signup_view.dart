import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/auth_footer.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/auth_header.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/signup_form.dart';


class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background2,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.lightpurple,
              AppColors.primaryColor,
              AppColors.backgroundColor,
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
  const SignUpBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
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
              color: AppColors.lightpurple,
            ),
            text: 'Already have an account?',
          ),
        ],
      ),
    );
  }
}

