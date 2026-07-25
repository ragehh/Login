import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/core/constants/app_colors.dart';
import 'package:login/core/constants/app_constants.dart';
import 'package:login/core/constants/app_text_styles.dart';
import 'package:login/core/widgets/custom_button.dart';
import 'package:login/core/widgets/custom_text_field.dart';
import 'package:login/core/widgets/divider_with_text.dart';
import 'package:login/features/auth/presentation/widgets/login_header_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffold,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.md,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: AppSpacing.maxContentWidth,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const LoginHeaderWidget(),
                    const SizedBox(height: AppSpacing.lg),

                    // Email Input
                    CustomTextField(
                      label: 'Email',
                      hintText: 'Enter your email',
                      prefixIcon: Icons.email_outlined,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: AppSpacing.md),

                    // Password Input
                    CustomTextField(
                      label: 'Password',
                      hintText: 'Enter your password',
                      prefixIcon: Icons.lock_outline,
                      obscureText: _isPasswordObscured,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordObscured
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: AppColors.secondary,
                          size: 24,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordObscured = !_isPasswordObscured;
                          });
                        },
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),

                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot password?',
                          style: AppTextStyles.link,
                        ),
                      ),
                    ),

                    // Sign In Button
                    CustomButton(
                      text: 'Sign In',
                      backgroundColor: AppColors.primary,
                      textColor: AppColors.white,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Submit action
                        }
                      },
                    ),
                    const SizedBox(height: AppSpacing.md),

                    const DividerWithText(text: 'Or continue with'),
                    const SizedBox(height: AppSpacing.md),

                    // Google Login
                    CustomButton(
                      text: 'Continue with Google',
                      backgroundColor: Colors.white,
                      textColor: AppColors.black,
                      icon: SvgPicture.asset(
                        AppAssets.googleLogo,
                        width: 24,
                        height: 24,
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(height: AppSpacing.md),

                    // Apple Login
                    CustomButton(
                      text: 'Continue with Apple',
                      backgroundColor: AppColors.black,
                      textColor: Colors.white,
                      icon: SvgPicture.asset(
                        AppAssets.appleLogo,
                        colorFilter: const ColorFilter.mode(
                          AppColors.white,
                          BlendMode.srcIn,
                        ),
                        width: 24,
                        height: 24,
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(height: AppSpacing.md),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
