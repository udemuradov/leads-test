import 'package:flutter/material.dart';
import 'package:leads_test/src/core/utils/app_colors.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.bgColor,
        appBarTheme: const AppBarTheme(
            foregroundColor: AppColors.orange,
            backgroundColor: AppColors.appBarColor),
            fontFamily: "Inter",
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false));
  }
}
