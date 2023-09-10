import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'My Profile',
      showBackButton: true,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          const Spacing.mediumHeight(),
          const Row(
            children: [
              CircleAvatar(
                radius: 60,
              ),
              const Spacing.mediumWidth(),
              Text('Tap to change')
            ],
          ),
          const Spacing.mediumHeight(),
          AppTextField(
            hintText: 'Promise',
          ),
          const Spacing.mediumHeight(),
          AppTextField(
            hintText: 'Tosin',
          ),
          const Spacing.mediumHeight(),
          AppTextField(
            hintText: 'promisetosin@gmail,com',
          ),
          const Spacing.mediumHeight(),
          AppTextField(
            hintText: '09077655445',
          ),
          const Spacing.mediumHeight(),
          AppTextField(
            hintText: 'Enter your password to confirm',
          ),
          const Spacing.mediumHeight(),
          AppButton(
              title: 'Upadte profile', color: AppColors.darkRed, onTap: () {}),
          const Spacing.mediumHeight(),
        ],
      ),
    );
  }
}
