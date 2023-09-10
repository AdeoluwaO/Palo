import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OverlayEntry? overlayEntry;
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
          const Spacing.mediumHeight(),
          const AppTextField(
            hintText: 'Promise',
          ),
          const Spacing.mediumHeight(),
          const AppTextField(
            hintText: 'Tosin',
          ),
          const Spacing.mediumHeight(),
          const AppTextField(
            hintText: 'promisetosin@gmail,com',
          ),
          const Spacing.mediumHeight(),
          const AppTextField(
            hintText: '09077655445',
          ),
          const Spacing.mediumHeight(),
          const AppTextField(
            hintText: 'Enter your password to confirm',
          ),
          const Spacing.mediumHeight(),
          AppButton(
              title: 'Update profile',
              color: AppColors.darkRed,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  //?
                  SnackBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    duration: const Duration(milliseconds: 900),
                    dismissDirection: DismissDirection.up,
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height - 150,
                      left: 10.w,
                      right: 10.w,
                    ),
                    content: const AppSnackbar(message: 'Profile updated!'),
                  ),
                );
              }),
          const Spacing.mediumHeight(),
        ],
      ),
    );
  }
}
