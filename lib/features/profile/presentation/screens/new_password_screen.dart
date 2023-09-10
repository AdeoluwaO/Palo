import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'Change password',
      showBackButton: true,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          const Spacing.mediumHeight(),
          AppTextField(
            hintText: 'Password*1',
            suffixIcon: const Icon(Icons.visibility_off_outlined),
            onChange: (String data) {},
          ),
          const Spacing.mediumHeight(),
          AppTextField(
            hintText: 'Password*2',
            suffixIcon: const Icon(Icons.visibility_off_outlined),
            onChange: (String data) {},
          ),
          const Spacing.mediumHeight(),
          AppTextField(
            hintText: 'Password*2',
            suffixIcon: const Icon(Icons.visibility_off_outlined),
            onChange: (String data) {},
          ),
          const Spacing.mediumHeight(),
          AppButton(
            title: 'Change password',
            color: AppColors.darkRed,
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.otpScreen);
            },
          ),
        ],
      ),
    );
  }
}
