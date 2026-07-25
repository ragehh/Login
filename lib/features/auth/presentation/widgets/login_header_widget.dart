import 'package:flutter/material.dart';
import 'package:login/core/constants/app_constants.dart';
import 'package:login/core/constants/app_text_styles.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome Back', style: AppTextStyles.title),
        const SizedBox(height: AppSpacing.xs),
        Text('Sign in to continue', style: AppTextStyles.subtitle),
      ],
    );
  }
}
