import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoRecentOrderScreen extends StatelessWidget {
  const NoRecentOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'Orders',
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          Text(
            'Recent Orders',
            style: AppTextStyle.bodyMediumX
                .copyWith(fontSize: 20, color: AppColors.black),
          ),
          Spacing.height(90.h),
          Center(
            child: Column(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: SvgPicture.asset(AppImages.noRecentOrderIcon),
                ),
                const Spacing.mediumHeight(),
                Text(
                  'You have no recent orders',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.bodyMedium.copyWith(
                    fontSize: 20,
                  ),
                ),
                const Spacing.largeHeight(),
                const Text(
                  'Your orders will appear here as soon as you start taking orders.',
                  style: AppTextStyle.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const Spacing.mediumHeight(),
                AppButton(
                  title: 'Learn how to get more orders',
                  titleStyle: AppTextStyle.headerLarge
                      .copyWith(fontSize: 16, color: AppColors.white),
                  color: AppColors.darkRed,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
