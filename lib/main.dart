import 'package:adaptive_demo/core/constants/app_colors.dart';
import 'package:adaptive_demo/core/utils/responsive.dart';
import 'package:adaptive_demo/features/auth/domain/repositories/auth_repository_interface.dart';
import 'package:adaptive_demo/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/annotations.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: _buildTheme(context),
      initialRoute: AppRoutes.initial,
      routes: AppRoutes.routes,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.linear(Responsive.textSizeFactor(context)),
          ),
          child: child!,
        );
      },
    );
  }

  ThemeData _buildTheme(BuildContext context) {
    final baseTheme = ThemeData.light();

    return baseTheme.copyWith(
      primaryColor: AppColors.primaryColor,
      colorScheme: baseTheme.colorScheme.copyWith(
        secondary: AppColors.secondaryColor,
        error: AppColors.errorColor,
      ),
      textTheme: _buildTextTheme(baseTheme.textTheme, context),
      scaffoldBackgroundColor: AppColors.backgroundColor,
      // Additional theming can be added here
    );
  }

  TextTheme _buildTextTheme(TextTheme base, BuildContext context) {
    return base.copyWith(
      headlineLarge: base.headlineLarge?.copyWith(
        fontSize: Responsive.textSizeFactor(context) * 32.0,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      bodyLarge: base.bodyLarge?.copyWith(
        fontSize: Responsive.textSizeFactor(context) * 16.0,
        color: AppColors.textColor,
      ),
      // Customize other text styles as needed
    );
  }
}
