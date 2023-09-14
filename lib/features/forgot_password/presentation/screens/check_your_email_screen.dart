import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckYourEmailScreen extends StatelessWidget {
  const CheckYourEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'Check your email',
      showBackButton: true,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          Text(
            'We sent a code to your email',
            style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
          ),
          const Spacing.mediumHeight(),
          Text(
            'Enter the code to get back into your account',
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
          ),
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
              color: AppColors.darkRed,
              titleStyle: AppTextStyle.headerLarge
                  .copyWith(fontSize: 17, color: AppColors.white),
              onTap: () {
                Navigator.pushNamed(context, RouteGenerator.enterNewPasswordScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
