import 'package:flutter/material.dart';

import 'app_colors.dart';

/// All reusable text styles live here so typography stays consistent and can be
/// updated from a single location.
abstract class AppTextStyles {
  const AppTextStyles._();

  static const TextStyle title = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w800,
    color: AppColors.heading,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.subtitle,
  );

  static const TextStyle fieldLabel = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.label,
  );

  static const TextStyle hint = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.hint,
  );

  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static const TextStyle link = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static const TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.subtitle,
  );
}
