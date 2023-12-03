import 'package:docdoc_appointments_app/core/helpers/spacing.dart';
import 'package:docdoc_appointments_app/core/theming/colors.dart';
import 'package:docdoc_appointments_app/core/theming/styles.dart';
import 'package:docdoc_appointments_app/core/widgets/app_text_button.dart';
import 'package:docdoc_appointments_app/core/widgets/app_text_form_field.dart';
import 'package:docdoc_appointments_app/features/login/ui/widgets/already_have_account.dart';
import 'package:docdoc_appointments_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BlueBold,
                ),
                vGap(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                vGap(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: "Email"),
                      vGap(18),
                      AppTextFormField(
                        hintText: "Password",
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: isObscureText
                                ? Colors.black
                                : AppColors.primaryBlue,
                          ),
                        ),
                      ),
                      vGap(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "ForgotPassword?",
                          style: TextStyles.font14BlueRegular,
                        ),
                      ),
                      vGap(40),
                      AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {},
                      ),
                      vGap(16),
                      const TermsAndConditionsText(),
                      vGap(60),
                      const AlreadyHaveAccountTextButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
