import 'package:adaptive_demo/features/auth/presentation/view/forgot_password_page.dart';
import 'package:adaptive_demo/features/auth/presentation/view/home_page.dart';
import 'package:adaptive_demo/features/auth/presentation/view/login_page.dart';
import 'package:adaptive_demo/features/auth/presentation/view/signup_page.dart';
import 'package:adaptive_demo/features/auth/presentation/view/verify_otp_page.dart';
import 'package:flutter/material.dart';
class AppRoutes {
  static const String initial = login;

  static const String login = '/login';
  static const String signup = '/signup';
  static const String verifyOtp = '/verifyOtp';
  static const String forgotPassword = '/forgotPassword';
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => LoginPage(),
    signup: (context) => SignupPage(),
    verifyOtp: (context) => VerifyOtpPage(),
    forgotPassword: (context) => ForgotPasswordPage(),
    home: (context) => HomePage(),
  };

  /// Optional: If you want to generate routes dynamically
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (context) => LoginPage());
      case signup:
        return MaterialPageRoute(builder: (context) => SignupPage());
      case verifyOtp:
        return MaterialPageRoute(builder: (context) => VerifyOtpPage());
      case forgotPassword:
        return MaterialPageRoute(builder: (context) => ForgotPasswordPage());
      case home:
        return MaterialPageRoute(builder: (context) => HomePage());
      default:
        return null; // Or redirect to a not found page
    }
  }
}
