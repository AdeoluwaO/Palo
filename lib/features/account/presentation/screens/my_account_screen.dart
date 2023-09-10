import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/images.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'My Account',
      showBackButton: true,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          const Spacing.mediumHeight(),
          CustomListTile(
            title: 'My Profile',
            leadingIcon: AppImages.profileIcon,
            subTitle: 'Name, phone number, email..',
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.myProfileScreen);
            },
          ),
          const Spacing.mediumHeight(),
          CustomListTile(
            title: 'Widthdrawal account',
            leadingIcon: AppImages.availableIcon,
            subTitle: 'Add your widthdrawal account',
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.myWidthdrawalScreen);
            },
          ),
          const Spacing.mediumHeight(),
          CustomListTile(
            title: 'Display',
            leadingIcon: AppImages.availableIcon,
            subTitle: 'Upload profile photo',
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.displayScreen);
            },
          ),
          const Spacing.mediumHeight(),
          CustomListTile(
            title: 'Password settings',
            leadingIcon: AppImages.passwordIcon,
            subTitle: 'Update your password',
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.changePasswordScreen);
            },
          ),
          const Spacing.mediumHeight(),
          CustomListTile(
            title: 'Notifications',
            leadingIcon: AppImages.notificationIcon,
            subTitle: 'Update your notifications settings',
            onTap: () {
              Navigator.pushNamed(
                  context, RouteGenerator.notificationsSettingsScreen);
            },
          ),
          const Spacing.mediumHeight(),
          CustomListTile(
            title: 'Availability',
            leadingIcon: AppImages.availableIcon,
            subTitle: 'Set your available time',
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.availabilityScreen);
            },
          ),
          const Spacing.mediumHeight(),
          CustomListTile(
            title: 'Delete Account',
            leadingIcon: AppImages.deleteIcon,
            subTitle: 'Delete your account and data',
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.deleteAccountScreen);
            },
          ),
        ],
      ),
    );
  }
}
