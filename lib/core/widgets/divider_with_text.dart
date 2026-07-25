import 'package:flutter/material.dart';
import 'package:login/core/constants/app_colors.dart';
import 'package:login/core/constants/app_constants.dart';
import 'package:login/core/constants/app_text_styles.dart';

class DividerWithText extends StatelessWidget {
  final String text;

  const DividerWithText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.border)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
          child: Text(
            text,
            style: AppTextStyles.link.copyWith(color: AppColors.secondary),
          ),
        ),
        const Expanded(child: Divider(color: AppColors.border)),
      ],
    );
  }
}
