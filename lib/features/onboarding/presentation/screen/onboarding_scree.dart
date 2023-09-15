import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_button.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const Spacing.bigHeight(),
                  Center(child: SvgPicture.asset(AppImages.berrystampLogo)),
                  Spacing.height(60.h),
                  Center(child: SvgPicture.asset(AppImages.onboardingIcon)),
                  Spacing.height(40.h),
                  Text(
                    'Ride, Deliver, Earn.',
                    style: AppTextStyle.headerLarge
                        .copyWith(color: AppColors.black, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  const Spacing.mediumHeight(),
                  Text.rich(
                    TextSpan(
                      text:
                          'Start maximizing your earning potential\ntoday with',
                      children: [
                        TextSpan(
                          text: ' Berrystamp rider',
                          style: AppTextStyle.bodyMediumX
                              .copyWith(color: AppColors.darkRed),
                        ),
                      ],
                    ),
                    style: AppTextStyle.bodyMediumX,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            AppButton(
                title: 'New user, Sign Up!',
                color: AppColors.darkRed,
                onTap: () {
                  Permission.location.request();
                }),
            const Spacing.mediumHeight(),
            AppButton(
                title: 'Log In',
                titleStyle: AppTextStyle.bodyMediumX.copyWith(
                  color: AppColors.darkRed,
                ),
                color: AppColors.purple200,
                onTap: () {
                  Permission.location.request();
                })
          ],
        ),
      ),
    );
  }
}
