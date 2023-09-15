import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_checkbox.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionScreen extends StatefulWidget {
  const TermsAndConditionScreen({super.key, this.showAgreeToTerms = false});
  final bool? showAgreeToTerms;

  @override
  State<TermsAndConditionScreen> createState() =>
      _TermsAndConditionScreenState();
}

class _TermsAndConditionScreenState extends State<TermsAndConditionScreen> {
  bool userHasAgreed = false;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'Berrystamp Terms of Service',
        largeTitle: true,
        showBackButton: true,
        body: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const Spacing.bigHeight(),
                    Text(
                      AppStrings.termsAndContions,
                      style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                    const Spacing.mediumHeight(),
                  ],
                ),
              ),
              const Spacing.mediumHeight(),
              if (widget.showAgreeToTerms ?? false)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'I agree to the terms and conditions',
                      style: AppTextStyle.bodyMediumX.copyWith(
                          fontSize: 14, color: AppColors.primaryColor),
                    ),
                    AppCheckbox(
                      value: userHasAgreed,
                      onChange: (bool value) {
                        setState(() => userHasAgreed = value);
                      },
                    )
                  ],
                ),
              const Spacing.mediumHeight(),
              if (widget.showAgreeToTerms ?? false)
                AppButton(
                    title: 'Next',
                    color: userHasAgreed
                        ? AppColors.darkRed
                        : AppColors.darkRed.withOpacity(0.3),
                    onTap: () {
                      if (userHasAgreed) {
                        Navigator.pushNamed(
                            context, RouteGenerator.selectAccountScreen);
                      }
                    })
            ],
          ),
        ));
  }
}
