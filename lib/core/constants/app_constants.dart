/// Spacing, sizing and radius tokens used across the UI. Using named constants
/// instead of magic numbers keeps the layout consistent and self-documenting.
abstract class AppSpacing {
  const AppSpacing._();

  static const double xs = 8;
  static const double sm = 12;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;

  /// Max content width so the form stays readable on tablets / web / desktop.
  static const double maxContentWidth = 440;

  static const double fieldHeight = 56;
  static const double buttonHeight = 54;
  static const double radius = 12;
}

/// Paths to bundled vector assets.
abstract class AppAssets {
  const AppAssets._();

  static const String googleLogo = 'assets/icons/google.svg';
}
