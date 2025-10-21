

import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  static ThemeData mainTheme = ThemeData(
    fontFamily: 'Roboto',
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.bgLight,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColors.accent,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.cardBg,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.cardBg,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}