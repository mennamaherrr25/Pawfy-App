// import 'package:flutter/material.dart';

// class OnboardingView extends StatelessWidget {
//   OnboardingView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Container(),);
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/routing/app_routes.dart';
import 'package:pawfy_app/core/constants/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';
import 'package:pawfy_app/features/on_boarding/presentation/views/onboarding2.dart';
import 'package:pawfy_app/features/on_boarding/presentation/views/onboarding1.dart';

class OnboardingView extends StatefulWidget {
  OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [OnboardingPage1(), OnboardingPage2()],
          ),
          Positioned(
            bottom: 170.h,
            left: 0.w,
            right: 0.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                2,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  width: index == _currentPage ? 24.w : 8.w,
                  height: 8.h,
                  decoration: BoxDecoration(
                    color: index == _currentPage
                        ? AppColors.background
                        : Colors.white70.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(99.r),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 74.h,
            left: 0.w,
            right: 0.w,
            child: Center(
              child: SizedBox(
                width: 276.w,
                height: 64.h,
                child: CustomButton(
                  currentPage: _currentPage,
                  pageController: _pageController,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required int currentPage,
    required PageController pageController,
  })  : _currentPage = currentPage,
        _pageController = pageController;

  final int _currentPage;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      onPressed: () {
        if (_currentPage == 1) {
          Navigator.pushReplacementNamed(context, AppRoutes.login);
        } else {
          _pageController.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
      child: CustomTextWidget(
        text: _currentPage == 1 ? 'Get Started' : 'Next',
        style: AppTextStyles.s18rPlaypenSans().copyWith(
          color: AppColors.primary,
        ),
      ),
    );
  }
}
