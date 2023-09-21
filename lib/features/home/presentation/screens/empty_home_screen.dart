import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/home/presentation/widgets/home_notification_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_button.dart';
import 'package:dispatchapp/shared/widgets/app_image_view.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EmptyHomeScreen extends StatelessWidget {
  const EmptyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
                "Home",
                style: AppTextStyle.headerLarge.copyWith(
                    fontSize: 24
                )
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, RouteGenerator.orderNotificationsScreen);
            },
            child: AppImageView(
              svgPath: AppImages.homeNotifyIcon,
              width: 24,
              height: 24,
            ),
          ),
          const Spacing.mediumWidth(),
        ],
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w),
          child: Column(
            children: [
              const HomeNotificationWidget(
                notifyImage: AppImages.updateImage,
                title: 'Update your account',
                subTitle: 'Update your account to access all features of \nthe app and improve your experience.',
              ),
              const Spacing.mediumHeight(),
              const Spacing.mediumHeight(),
              Row(
                children: [
                  Text(
                      "My Stats",
                       style: AppTextStyle.headerLarge.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      )),
                ],
              ),
              const Spacing.largeHeight(),
              Center(
                child: Column(
                  children: [
                    Transform.scale(
                      scale: 1.3,
                      child: SvgPicture.asset(AppImages.nothingBars),
                    ),
                    const Spacing.mediumHeight(),
                    Text(
                      'Nothing to see yet',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.bodyMedium.copyWith(
                        fontSize: 20,
                        color: AppColors.black
                      ),
                    ),
                    const Spacing.mediumHeight(),
                    const Text(
                      'Your stats will appear here as soon \nas you start taking orders.',
                      style: AppTextStyle.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const Spacing.mediumHeight(),
              Row(
                children: [
                  Text(
                      "My Orders",
                      style: AppTextStyle.headerLarge.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      )),
                ],
              ),
              const Spacing.largeHeight(),
              const Spacing.largeHeight(),
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
                    AppButton(
                      title: 'Go to orders',
                      titleStyle: AppTextStyle.headerLarge
                          .copyWith(fontSize: 16, color: AppColors.darkRed),
                      color: AppColors.purple200,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
          ]),
        ),
      ),
    );
  }
}