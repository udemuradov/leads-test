import 'package:flutter/material.dart';


class AppTheme {
  static ThemeData get light {
    return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            foregroundColor: Colors.green,
            backgroundColor: Colors.green),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false));
  }
}
