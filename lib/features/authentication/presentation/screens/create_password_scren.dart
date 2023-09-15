import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({
    super.key,
    required this.phoneNumber,
  });
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        showBackButton: true,
        titleText: 'Create your Password',
        body: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      'We sent a code to $phoneNumber',
                      style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
                    ),
                    const Spacing.mediumHeight(),
                    AppTextField(
                      hintText: 'Password',
                      onChange: (String value) {},
                      obscureText: true,
                      suffixIcon: const Icon(Icons.visibility_outlined),
                    )
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
                          context, RouteGenerator.signupFormScreen);
                    }),
              ),
              const Spacing.mediumHeight(),
            ],
          ),
        ));
  }
}
