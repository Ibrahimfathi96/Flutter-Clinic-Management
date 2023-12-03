import 'package:docdoc_appointments_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountTextButton extends StatelessWidget {
  const AlreadyHaveAccountTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: TextStyles.font14DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font14BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
