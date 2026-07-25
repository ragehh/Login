import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login/core/theme/app_theme.dart';
import 'package:login/features/auth/presentation/views/login_view.dart';

void main() {
  runApp(
    DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: AppTheme.light,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const LoginView(),
    );
  }
}
