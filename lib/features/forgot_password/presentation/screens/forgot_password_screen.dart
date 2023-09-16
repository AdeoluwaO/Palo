import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/forgot_password/presentation/provider/forgot_password_provider.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'Forgot Password',
      showBackButton: true,
      body: Consumer<ForgotPasswordProvider>(
          builder: (ctx, forgotPasswordProvider, child) {
        return ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            Text(
              'Enter your details',
              style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
            ),
            const Spacing.mediumHeight(),
            AppTextField(
              hintText: 'Phone Number',
              onChange: (text) {
                forgotPasswordProvider.setPhoneNumber(text);
              },
              validateFunction: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your phone number';
                } else {
                  return null;
                }
              },
            ),
            const Spacing.mediumHeight(),
            AppTextField(
              hintText: 'Email',
              onChange: (text) {
                forgotPasswordProvider.setEmail(text);
              },
              validateFunction: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter email';
                } else {
                  return null;
                }
              },
            ),
            const Spacing.largeHeight(),
            const Spacing.largeHeight(),
            const Spacing.largeHeight(),
            Align(
              alignment: Alignment.bottomRight,
              child: AppButton(
                  title: 'Next',
                  width: 109.w,
                  height: 55.h,
                  color: forgotPasswordProvider.isPasswordFormFilled()
                      ? AppColors.darkRed
                      : AppColors.lightRedd,
                  padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
                  suffixIcon: const Icon(Icons.chevron_right_outlined,
                      size: 25, color: AppColors.white),
                  onTap: () {
                    Navigator.pushNamed(
                        context, RouteGenerator.checkYourEmailScreen);
                  }),
            ),
          ],
        );
      }),
    );
  }
}
