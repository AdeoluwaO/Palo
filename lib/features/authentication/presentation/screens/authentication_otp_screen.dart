import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthenticationOtpScreen extends StatefulWidget {
  const AuthenticationOtpScreen({
    super.key,
    required this.phoneNumber,
  });
  final String phoneNumber;

  @override
  State<AuthenticationOtpScreen> createState() =>
      _AuthenticationOtpScreenState();
}

class _AuthenticationOtpScreenState extends State<AuthenticationOtpScreen> {
  String otpCode = '';

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
                    'We sent a code to ${widget.phoneNumber}',
                    style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
                  ),
                  const Spacing.mediumHeight(),
                  AppPinCodeField(
                    onComplete: (String pin) {
                      setState(() => otpCode = pin);
                    },
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
                    size: 20, color: AppColors.white),
                color: otpCode.length == 6
                    ? AppColors.darkRed
                    : AppColors.darkRed.withOpacity(0.3),
                titleStyle: AppTextStyle.headerLarge
                    .copyWith(fontSize: 17, color: AppColors.white),
                onTap: () {
                  if (otpCode.length == 6) {
                    Navigator.pushNamed(
                        context, RouteGenerator.createPasswordScreen,
                        arguments: widget.phoneNumber);
                  }
                },
              ),
            ),
            const Spacing.mediumHeight(),
          ],
        ),
      ),
    );
  }

  _navigateToCreatePassword() {
    if (otpCode.length == 6) {
      Navigator.pushNamed(context, RouteGenerator.createPasswordScreen,
          arguments: widget.phoneNumber);
    }
  }
}
