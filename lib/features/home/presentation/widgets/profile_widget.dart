import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.profileTitle,
    required this.personName,
    required this.profileImage,
    this.onTap,
  });
  final String profileTitle, profileImage, personName;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 141.h,
        width: 158.5,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.purple100),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(profileImage),
              backgroundColor: AppColors.lightPurple,
            ),
            const Spacing.smallHeight(),
            Text(
              profileTitle,
              style: AppTextStyle.bodySmall
                  .copyWith(fontSize: 13,
                  fontWeight: FontWeight.w500,
                  ),
            ),
            const Spacing.smallHeight(),
            Text(
              personName,
              style: AppTextStyle.headerLarge
                  .copyWith(fontSize: 16, color: AppColors.black),
            )
          ],
        ),
      ),
    );
  }
}