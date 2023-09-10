import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'My Profile',
        showBackButton: true,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            const CircleAvatar(
              radius: 60,
              foregroundImage: AssetImage(AppImages.testProfileImage),
            ),
            const Spacing.mediumHeight(),
            const AccountInfoContainer(title: 'Promise'),
            const Spacing.mediumHeight(),
            const AccountInfoContainer(title: 'Tosin'),
            const Spacing.mediumHeight(),
            const AccountInfoContainer(title: 'promisetosin@gmail.com'),
            const Spacing.mediumHeight(),
            const AccountInfoContainer(title: '0908316384385u'),
            const Spacing.mediumHeight(),
            AppButton(
                color: AppColors.darkRed,
                title: 'Edit profile',
                width: 240.w,
                onTap: () {
                  Navigator.pushNamed(
                      context, RouteGenerator.editProfileScreen);
                }),
            const Spacing.mediumHeight(),
          ],
        ));
  }
}
