import 'package:flutter/material.dart';
import 'package:leads_test/src/core/utils/app_colors.dart';

abstract class ThemeText {
  static const TextStyle cardHeader = TextStyle(
      fontSize: 14,
      fontFamily: "Inter",
      color: Colors.white,
      fontWeight: FontWeight.w500);
  static const TextStyle textBold = TextStyle(
      fontSize: 18,
      fontFamily: "Inter",
      color: Colors.white,
      fontWeight: FontWeight.w700);
}
