import 'package:flutter/material.dart';
import 'package:tracklet/core/routes/app_routes/app_routes.dart';
import 'package:tracklet/presentation/auth/login_screen/login_screen.dart';
import 'package:tracklet/presentation/main_app/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:tracklet/presentation/main_app/chat/chat_screen/chat_screen.dart';
import 'package:tracklet/presentation/main_app/notification/notification/notification_screen.dart';
import 'package:tracklet/presentation/main_app/home/home_screen.dart';
import 'package:tracklet/presentation/main_app/orders/orders.dart';
import 'package:tracklet/presentation/main_app/request/all_request.dart';
import 'package:tracklet/presentation/main_app/scan/scan.dart';
import 'package:tracklet/presentation/main_app/stock/stock.dart';
import 'package:tracklet/presentation/onboarding/main_onboarding_screem.dart';
import 'package:tracklet/presentation/select_language/select_language.dart';
import 'package:tracklet/presentation/splash_screen/splash_screen.dart';


class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return _buildRoute(const SplashScreen());
      case AppRoutes.selectLanguage:
        return _buildRoute(const SelectLanguage());
      case AppRoutes.onboarding:
        return _buildRoute(const MainOnboardingScreem());
      case AppRoutes.login:
        return _buildRoute( LoginScreen());
      case AppRoutes.bottomNavBar:
        return _buildRoute( BottomNavBar());
      case AppRoutes.home:
        return _buildRoute(const HomeScreen());
      case AppRoutes.notificationsScreen:
        return _buildRoute( NotificationScreen());
      case AppRoutes.chat:
        return _buildRoute( ChatScreen());
      case AppRoutes.orders:
        return _buildRoute(const Orders());
      case AppRoutes.requests:
        return _buildRoute(const AllRequest());
      case AppRoutes.scan:
        return _buildRoute(const Scan());
      case AppRoutes.stock:
        return _buildRoute(const Stock());
      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute _buildRoute(Widget child) {
    return MaterialPageRoute(builder: (_) => child);
  }

  static MaterialPageRoute _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(child: Text('Route Not Found')),
      ),
    );
  }
}
