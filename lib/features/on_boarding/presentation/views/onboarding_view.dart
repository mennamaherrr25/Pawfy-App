// import 'package:flutter/material.dart';

// class OnboardingView extends StatelessWidget {
//   const OnboardingView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Container(),);
//   }
// }
import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/routing/app_routes.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';
import 'package:pawfy_app/features/on_boarding/presentation/views/onboarding2.dart';
import 'package:pawfy_app/features/on_boarding/presentation/views/onboarding1.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentPage = 0; // ✅ بيتتبع الصفحة الحالية

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          // ✅ الـ PageView
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index; // ✅ بيتحدث كل ما تتغير الصفحة
              });
            },
            children: [OnboardingPage1(), OnboardingPage2()],
          ),

          // ✅ الـ Dot Indicator
          Positioned(
            bottom: h * 0.19,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                2, // عدد الصفحات
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: index == _currentPage ? 24 : 8, // ✅ الـ active أكبر
                  height: 8,
                  decoration: BoxDecoration(
                    color: index == _currentPage
                        ? AppColors.backgroundColor
                        : Colors.white70.withValues(alpha: .2),

                    borderRadius: BorderRadius.circular(99),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 50),

          // ✅ زرار Next
          Positioned(
            bottom: h * 0.081,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 276,
                height: 64,
                child: CustomButton(
                  currentPage: _currentPage,
                  pageController: _pageController,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required int currentPage,
    required PageController pageController,
  }) : _currentPage = currentPage,
       _pageController = pageController;

  final int _currentPage;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
          color: AppColors.primaryColor,
        ),
      ),

      //Text(_currentPage == 1 ? 'Get Started' : 'Next'),
    );
  }
}
