import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'More',
      centerTitle: true,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          const CircleAvatar(
            foregroundImage: AssetImage(AppImages.testProfileImage),
            radius: 90,
          ),
          const Spacing.mediumHeight(),
          Text(
            'Promise Tosin',
            style: AppTextStyle.headerLarge.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const Spacing.largeHeight(),
          CustomListTile(
            leadingIcon: AppImages.profileIcon,
            title: 'Account',
            subTitle: 'Upload your profile photo',
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.myAccountScreen);
            },
          ),
          const Spacing.bigHeight(),
          CustomListTile(
            leadingIcon: AppImages.walletIcon,
            title: 'Wallet',
            subTitle: 'Upload your profile photo',
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.walletScreen);
            },
          ),
          const Spacing.bigHeight(),
          CustomListTile(
            leadingIcon: AppImages.transportationIcon,
            title: 'Vehicle',
            subTitle: 'Upload your profile photo',
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.vehicleScreen);
            },
          ),
          const Spacing.bigHeight(),
          CustomListTile(
            leadingIcon: AppImages.helpIcon,
            title: 'Help and Support',
            subTitle: 'Upload your profile photo',
            onTap: () {},
          ),
          const Spacing.bigHeight(),
          AppButton(
            title: 'Logout',
            titleStyle: AppTextStyle.headerLarge
                .copyWith(fontSize: 16, color: AppColors.black),
            onTap: () {},
          ),
          const Spacing.mediumHeight()
        ],
      ),
    );
  }
}
