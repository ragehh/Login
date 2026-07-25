import 'package:flutter/material.dart';

/// Central palette for the app. Keeping every color in one place makes the
/// design easy to tweak and guarantees the UI stays consistent.
abstract class AppColors {
  const AppColors._();

  static const Color scaffold = Color(0xFFF7F8FA);
  static const Color primary = Color(0xFF2563EB);
  static const Color secondary = Color(0xFF64748B);
  static const Color black = Color(0xFF0B1220);

  static const Color heading = Color(0xFF0B1220);
  static const Color label = Color(0xFF1F2937);
  static const Color subtitle = Color(0xFF6B7280);
  static const Color hint = Color(0xFF9CA3AF);

  static const Color fieldFill = Color(0xFFF9FAFB);
  static const Color border = Color(0xFFE5E7EB);
  static const Color divider = Color(0xFFE5E7EB);

  static const Color white = Colors.white;
}
