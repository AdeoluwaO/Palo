import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
              child: SvgPicture.asset(AppImages.berrystampLogo),
            ),
            const Spacing.bigHeight(),
            Text(
              'Berrystamp’s motto here',
              style: AppTextStyle.bodySmall.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const Spacing.mediumHeight(),
            SimpleListTile(
              trailingText: 'Terms and conditions',
              leading: SvgPicture.asset(AppImages.helpIcon),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteGenerator.termAndConditionScreen,
                );
              },
            ),
            const Spacing.mediumHeight(),
            SimpleListTile(
              trailingText: 'Privacy policy',
              leading: SvgPicture.asset(AppImages.helpIcon),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(
                    context, RouteGenerator.privacyPolicyScreen);
              },
            ),
            const Spacing.largeHeight(),
            const Text.rich(
              TextSpan(
                  text: 'By using Berrystamp, you agree to the',
                  children: [
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    TextSpan(
                      text: ' and ',
                    ),
                    TextSpan(
                      text: 'Privacy policy',
                      style: TextStyle(decoration: TextDecoration.underline),
                    )
                  ]),
              style: AppTextStyle.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
