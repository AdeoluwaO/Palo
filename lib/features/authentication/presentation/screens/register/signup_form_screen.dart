import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupFormScreen extends StatelessWidget {
  const SignupFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'What’s your name?',
      showBackButton: true,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text(
                    'Let us know how to properly address you',
                    style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
                  ),
                  const Spacing.mediumHeight(),
                  AppTextField(
                    hintText: 'First name',
                    onChange: (String value) {},
                  ),
                  const Spacing.mediumHeight(),
                  AppTextField(
                    hintText: 'Last name',
                    onChange: (String value) {},
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: AppButton(
                  title: 'Next',
                  width: 109.w,
                  color: AppColors.darkRed,
                  suffixIcon: const Icon(
                    Icons.chevron_right,
                    size: 20,
                    color: AppColors.white,
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                        context, RouteGenerator.termAndConditionScreen,
                        arguments: true);
                  }),
            ),
            const Spacing.mediumHeight(),
          ],
        ),
      ),
    );
  }
}
