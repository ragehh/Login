import 'package:flutter/material.dart';
import 'package:login/core/constants/app_colors.dart';
import 'package:login/core/constants/app_text_styles.dart';


/// Builds the global [ThemeData]. Centralising the theme keeps widgets clean —
/// they read colors and fonts from the theme instead of hard-coding values.
abstract class AppTheme {
  const AppTheme._();

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.scaffold,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      surface: AppColors.scaffold,
    ),
    textTheme: const TextTheme(
      titleLarge: AppTextStyles.title,
      bodyMedium: AppTextStyles.body,
    ),
  );
}
