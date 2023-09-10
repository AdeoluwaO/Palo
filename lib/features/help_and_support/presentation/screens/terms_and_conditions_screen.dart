import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'Berrystamp Terms of Service',
        largeTitle: true,
        showBackButton: true,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            const Spacing.bigHeight(),
            Text(
              AppStrings.termsAndContions,
              style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
              textAlign: TextAlign.justify,
            ),
            const Spacing.mediumHeight(),
          ],
        ));
  }
}
