import 'package:flutter/material.dart';
import 'package:pawfy_app/core/routing/app_routes.dart';
import 'package:pawfy_app/features/auth/presentation/views/login_view.dart';
import 'package:pawfy_app/features/auth/presentation/views/signup_view.dart';
import 'package:pawfy_app/features/on_boarding/presentation/views/splash_view.dart';
import 'package:pawfy_app/features/on_boarding/presentation/views/onboarding_view.dart';
import 'package:pawfy_app/features/home/presentation/screens/home_screen.dart';
import 'package:pawfy_app/features/layout/presentation/screens/layout_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => SplashView());

      case AppRoutes.onboarding:
        return MaterialPageRoute(builder: (context) => OnboardingView());
      
      case AppRoutes.login:
        return MaterialPageRoute(builder: (context) => LoginView());
      
      case AppRoutes.signup:
        return MaterialPageRoute(builder: (context) => SignupView());
      
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case AppRoutes.layout:
        return MaterialPageRoute(builder: (context) => LayoutScreen());

      case AppRoutes.category:
        return MaterialPageRoute(builder: (context) => Container());

      case AppRoutes.cart:
        return MaterialPageRoute(builder: (context) => Container());

      case AppRoutes.profile:
        return MaterialPageRoute(builder: (context) => Container());

      case AppRoutes.productDetails:
        return MaterialPageRoute(builder: (context) => Container());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route is defined for ${setting.name}'),
            ),
          ),
        );
    }
  }
}
