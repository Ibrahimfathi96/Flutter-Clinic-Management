import 'package:docdoc_appointments_app/core/helpers/extensions.dart';
import 'package:docdoc_appointments_app/core/routing/routes.dart';
import 'package:docdoc_appointments_app/core/theming/colors.dart';
import 'package:docdoc_appointments_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.primaryBlue),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 52.h),
        ),
      ),
      child: Text(
        "Get Started",
        style: TextStyles.font16WhiteMeduim,
      ),
    );
  }
}
