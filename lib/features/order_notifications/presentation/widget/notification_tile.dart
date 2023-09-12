import 'package:dispatchapp/shared/constants/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/constants/app_text_style.dart';
import '../../../../shared/widgets/app_spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    this.leading,
    this.leadingIcon,
    this.color,
    this.subTitle,
    this.title,
    this.onTap,
  });
  final Color? color;
  final String? title, subTitle,leadingIcon;
  final Widget? leading;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 84.h,
        width: 335.w,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                leading ??
                    SvgPicture.asset(
                      leadingIcon ?? AppImages.noVisisbilityIcon,
                      height: 40.h,
                      width: 40.w,
                    ),
                const Spacing.mediumWidth(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? '',
                      style: AppTextStyle.headerLarge.copyWith(fontSize: 14,
                        fontWeight: FontWeight.w400, overflow: TextOverflow.visible ),
                    ),
                    const Spacing.smallHeight(),
                    Text(
                      subTitle ?? '',
                      style: AppTextStyle.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
