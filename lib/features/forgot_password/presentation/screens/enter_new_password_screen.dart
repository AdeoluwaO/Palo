import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/forgot_password/presentation/provider/forgot_password_provider.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class EnterNewPasswordScreen extends StatelessWidget {
  const EnterNewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'Enter new password',
      showBackButton: true,
      body: Consumer<ForgotPasswordProvider>(
          builder: (ctx, forgotPasswordProvider, child) {
        return ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            Text(
              'The new password you want to use',
              style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
            ),
            const Spacing.mediumHeight(),
            AppTextField(
              hintText: 'Password',
              obscureText: forgotPasswordProvider.obscurePass,
              suffixIcon: forgotPasswordProvider.isFirstForm()
                  ? GestureDetector(
                  onTap: (){
                    forgotPasswordProvider.togglePass();
                  },
                  child: forgotPasswordProvider.isPassTapped
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.visibility_outlined)
              ) : null,
              onChange: (String data) {
                forgotPasswordProvider.setPass(data);
              },
              validateFunction: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your Password';
                } else {
                  return null;
                }
              },
            ),
            const Spacing.mediumHeight(),
            AppTextField(
              hintText: 'Confirm Password',
              obscureText: forgotPasswordProvider.obscureConfirmPass,
              suffixIcon: forgotPasswordProvider.isSecondForm()
                 ? GestureDetector(
                  onTap: (){
                    forgotPasswordProvider.toggleConfirmPass();
                  },
                  child: forgotPasswordProvider.isConfirmPassTapped
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.visibility_outlined)
              ) : null,
              onChange: (String data) {
                forgotPasswordProvider.setConfirmPass(data);
              },
              validateFunction: (value) {
                if (value == null || value.isEmpty) {
                  return 'Confirm your password';
                } else if (value !=
                    forgotPasswordProvider.pass) {
                  return 'Password does not match';
                }else {
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
                width: 110.w,
                height: 55.h,
                padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
                suffixIcon: const Icon(Icons.chevron_right_outlined,
                    size: 25, color: AppColors.white),
                color: forgotPasswordProvider.isNewPasswordFormFilled()
                    ? AppColors.darkRed
                    : AppColors.lightRed,
                titleStyle: AppTextStyle.headerLarge
                    .copyWith(fontSize: 17, color: AppColors.white),
                onTap: () {
                  Navigator.pushNamed(
                      context, RouteGenerator.enterNewPasswordScreen);
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
