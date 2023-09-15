import 'dart:developer';

import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'Enter the code',
      showBackButton: true,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Text(
                    'We sent an otp to your email to confirm your new\ndetails',
                    style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
                  ),
                  const Spacing.mediumHeight(),
                  AppPinCodeField(
                    onComplete: (String pin) {},
                  ),
                  const Spacing.mediumHeight(),
                  AppButton(
                    title: 'Resend code',
                    titleStyle: AppTextStyle.bodySmall.copyWith(
                      fontSize: 14,
                      color: AppColors.primaryColor,
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: AppButton(
                title: 'Next',
                width: 109.w,
                suffixIcon: const Icon(Icons.chevron_right_outlined,
                    size: 25, color: AppColors.white),
                color: AppColors.darkRed,
                titleStyle: AppTextStyle.headerLarge
                    .copyWith(fontSize: 17, color: AppColors.white),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    //?
                    SnackBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      duration: const Duration(milliseconds: 900),
                      dismissDirection: DismissDirection.up,
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height - 150,
                        left: 10.w,
                        right: 10.w,
                      ),
                      content: const AppSnackbar(message: 'Password updated!'),
                    ),
                  );
                  Navigator.pushNamed(
                      context, RouteGenerator.newPasswordScreen);
                },
              ),
            ),
            const Spacing.mediumHeight(),
          ],
        ),
      ),
    );
  }
}
