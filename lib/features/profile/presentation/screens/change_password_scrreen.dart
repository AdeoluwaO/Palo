import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePawwordScreen extends StatelessWidget {
  const ChangePawwordScreen({super.key});

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
            hintText: 'Old password',
            onChange: (String data) {},
          ),
          const Spacing.mediumHeight(),
          AppTextField(
            hintText: 'New password',
            onChange: (String data) {},
          ),
          const Spacing.mediumHeight(),
          AppTextField(
            hintText: 'Confirm new password',
            onChange: (String data) {},
          ),
          const Spacing.mediumHeight(),
          AppButton(
            title: 'Change password',
            color: AppColors.darkRed,
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.newPasswordScreen);
            },
          ),
        ],
      ),
    );
  }
}
