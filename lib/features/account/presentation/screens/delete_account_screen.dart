import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/constants/images.dart';
import 'package:dispatchapp/shared/widgets/app_button.dart';
import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'Delete account',
        showBackButton: true,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  foregroundImage: AssetImage(AppImages.testProfileImage),
                ),
                const Spacing.mediumWidth(),
                Text(
                  'Promise Tosin',
                  style: AppTextStyle.bodyMediumX
                      .copyWith(color: AppColors.black, fontSize: 14),
                ),
              ],
            ),
            const Spacing.largeHeight(),
            Text(
              'When you delete your account, Berrystamp will delete your email, phone number, and all other info.',
              style: AppTextStyle.headerLarge
                  .copyWith(fontSize: 18, color: AppColors.darkGrey),
              textAlign: TextAlign.justify,
            ),
            const Spacing.largeHeight(),
            Text(
              'You will no longer be able to take deliveries using Berrystamp',
              style: AppTextStyle.headerLarge
                  .copyWith(fontSize: 18, color: AppColors.black),
              textAlign: TextAlign.justify,
            ),
            const Spacing.largeHeight(),
            Text(
              'This action cannot be undone',
              style: AppTextStyle.headerLarge
                  .copyWith(fontSize: 18, color: AppColors.primaryColor),
              textAlign: TextAlign.justify,
            ),
            Spacing.height(64.h),
            AppButton(
              title: 'Delete account',
              color: AppColors.darkRed,
              onTap: () {
                Navigator.pushNamed(
                    context, RouteGenerator.confirmDeleteAccountScreen);
              },
            ),
            const Spacing.mediumHeight(),
            AppButton(
              title: 'Cancel',
              titleStyle:
                  AppTextStyle.bodyMedium.copyWith(color: AppColors.darkRed),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
