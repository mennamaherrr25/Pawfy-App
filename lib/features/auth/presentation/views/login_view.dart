import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/routing/app_routes.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/custom_button.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/auth_footer.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/login_fields.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/auth_header.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/social_login_button.dart';
import 'package:pawfy_app/features/auth/presentation/widgets/divider_with_text.dart.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: LoginBody(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthHeader(title: 'Pawfy', subTitle: 'Welcome back', showIcon: true),
        LoginFields(),
        CustomButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, AppRoutes.layout);
          },
          textWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(
                text: 'Login',
                style: AppTextStyles.s18rPlaypenSans().copyWith(
                  fontFamily: 'Inter',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(Icons.start, color: Colors.white),
              ),
            ],
          ),
          backgroundColor: AppColors.primaryColor,
        ),

        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 24),
          child: DividerWithText(text: 'OR CONTINUE WITH'),
        ),
        SocialLoginButton(),
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 40),
          child: AuthFooter(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.signup);
            },
            buttonText: 'Sign Up',
            text: "Don't have an account?",
          ),
        ),
      ],
    );
  }
}
