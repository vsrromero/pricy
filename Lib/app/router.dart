import 'package:flutter/material.dart';
import '../features/home/presentation/pages/landing_page.dart';
import 'splash/splash_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/landing':
        return MaterialPageRoute(builder: (_) => const LandingPage());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
