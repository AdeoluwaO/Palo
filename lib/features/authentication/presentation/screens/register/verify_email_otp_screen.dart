import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class VerifyEmailOtpScreen extends StatelessWidget {
  const VerifyEmailOtpScreen({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        showBackButton: true,
        titleText: 'Verify email',
        body: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Text.rich(
                      TextSpan(
                        text: 'We sent a code to  ',
                        children: [
                          TextSpan(
                              text: email,
                              style: AppTextStyle.bodySmall.copyWith(
                                  fontSize: 14, color: AppColors.primaryColor)),
                          const TextSpan(text: 'to verify your account'),
                        ],
                      ),
                      style: AppTextStyle.bodySmall.copyWith(fontSize: 14)),
                  const Spacing.mediumHeight(),
                  AppPinCodeField(onComplete: (value) {}),
                  const Spacing.mediumHeight(),
                  AppButton(
                      title: 'Resend code',
                      titleStyle: AppTextStyle.bodySmall.copyWith(
                          fontSize: 14, color: AppColors.primaryColor),
                      onTap: () {}),
                ],
              )),
              Align(
                alignment: Alignment.bottomRight,
                child: AppButton(
                    title: 'Next',
                    color: AppColors.darkRed,
                    width: 109.w,
                    suffixIcon: const Icon(
                      Icons.chevron_right,
                      color: AppColors.white,
                      size: 20,
                    ),
                    onTap: () {
                      showTopSnackBar(
                        context,
                        const AppSnackbar(message: 'Email added successfully!'),
                      );
                      Navigator.pushNamed(
                          context, RouteGenerator.updateAccountScreen);
                    }),
              )
            ],
          ),
        ));
  }
}
