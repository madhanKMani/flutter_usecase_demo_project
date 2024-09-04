import 'package:flutter/material.dart';

class Responsive {
  static double textSize(BuildContext context, double baseSize) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return baseSize; // Mobile
    } else if (screenWidth < 1200) {
      return baseSize * 1.2; // Tablet
    } else {
      return baseSize * 1.5; // Web
    }
  }

  static double widgetSize(BuildContext context, double baseSize) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return baseSize; // Mobile
    } else if (screenWidth < 1200) {
      return baseSize * 1.2; // Tablet
    } else {
      return baseSize * 1.5; // Web
    }
  }

  static double textSizeFactor(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return 1.0; // Mobile
    } else if (screenWidth < 1200) {
      return 1.2; // Tablet
    } else {
      return 1.5; // Web
    }
  }
}
