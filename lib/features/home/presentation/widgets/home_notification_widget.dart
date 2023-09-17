import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeNotificationWidget extends StatelessWidget {
  const HomeNotificationWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.notifyImage,
    this.onTap,
  });
  final String title, notifyImage, subTitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
            color: AppColors.lightPurple,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(notifyImage),
              backgroundColor: AppColors.lightPurple,
            ),
            const Spacing.mediumWidth(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.headerLarge
                      .copyWith(fontSize: 14, color: AppColors.black),
                ),
                const Spacing.smallHeight(),
                Text(
                  subTitle,
                  style: AppTextStyle.headerMedium
                      .copyWith(fontSize: 11, color: AppColors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
