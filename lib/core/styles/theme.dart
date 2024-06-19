import 'package:flutter/material.dart';
import 'package:profile_design/core/styles/app_colors.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: const Color(0xffF9F9F9),
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
    outlinedButtonTheme: const OutlinedButtonThemeData(
        style: ButtonStyle(enableFeedback: false)),
    iconButtonTheme:
        const IconButtonThemeData(style: ButtonStyle(enableFeedback: false)),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        onPrimary: AppColors.onPrimary,
        error: AppColors.errorColor,
        onSecondary: AppColors.onSecondary),
  );
 
}
