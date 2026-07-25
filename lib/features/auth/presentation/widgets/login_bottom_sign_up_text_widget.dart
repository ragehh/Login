import 'package:flutter/material.dart';
import 'package:login/core/constants/app_colors.dart';
import 'package:login/core/constants/app_text_styles.dart';

class LoginBottomSignUpTextWidget extends StatelessWidget {
  const LoginBottomSignUpTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle(color: AppColors.secondary, fontSize: 14),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Sign up',
            style: AppTextStyles.link
          ),
        ),
      ],
    );
  }
}
