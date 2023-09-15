import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.onTap,
    this.leading,
    this.subTitle,
    this.title,
    this.trailing,
    this.leadingIcon,
    this.trailingIcon,
    this.color,
  });
  final Function()? onTap;
  final String? title, subTitle, trailingIcon, leadingIcon;
  final Color? color;

  final Widget? trailing, leading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // width: 335.w,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // border: Border.all(
          //   color: color ?? AppColors.lightPurple,
          // ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                leading ??
                    SvgPicture.asset(
                      leadingIcon ?? AppImages.noVisisbilityIcon,
                      height: 30.h,
                      width: 30.w,
                    ),
                const Spacing.mediumWidth(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? '',
                      style: AppTextStyle.headerLarge.copyWith(fontSize: 16),
                    ),
                    const Spacing.smallHeight(),
                    Text(
                      subTitle ?? '',
                      style: AppTextStyle.bodySmall,
                      // overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ],
            ),
            trailing ??
                SvgPicture.asset(
                  trailingIcon ?? AppImages.arrowBack,
                  height: 20.h,
                  width: 20.w,
                )
          ],
        ),
      ),
    );
  }
}
