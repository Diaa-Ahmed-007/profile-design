import 'package:flutter/material.dart';
import 'package:profile_design/core/styles/app_colors.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: AppColors.primary,
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.onPrimary),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            enableFeedback: false, backgroundColor: AppColors.onPrimary)),
    filledButtonTheme: FilledButtonThemeData(
        style: ElevatedButton.styleFrom(
            enableFeedback: false, backgroundColor: AppColors.onPrimary)),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(enableFeedback: false),
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        onPrimary: AppColors.onPrimary),
  );
}
