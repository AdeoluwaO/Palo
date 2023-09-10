import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        showBackButton: true,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            const Spacing.mediumHeight(),
            Center(
              child: Text(
                'Privacy',
                style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
              ),
            ),
            const Spacing.smallHeight(),
            SvgPicture.asset(AppImages.berrystampLogo),
            Spacing.height(80.h),
            Center(
              child: SvgPicture.asset(AppImages.privacyIcon),
            ),
            const Spacing.largeHeight(),
            Text(
              'Control is in your hands',
              style: AppTextStyle.bodyMedium.copyWith(
                fontSize: 24,
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacing.largeHeight(),
            Text(
              'We believe your personal data is precious and belongs to you alone. With Berrystamp, your information is safe and you can delete your account anytime',
              style: AppTextStyle.bodySmall.copyWith(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
