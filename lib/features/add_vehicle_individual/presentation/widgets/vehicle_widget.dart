import 'package:dispatchapp/shared/constants/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/constants/app_text_style.dart';
import '../../../../shared/constants/colors.dart';
import '../../../../shared/widgets/app_spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VehicleWidget extends StatelessWidget {
  const VehicleWidget({
    super.key,
    this.leading,
    this.leadingIcon,
    this.color,
    this.title,
    this.onTap,
  });
  final Color? color;
  final String? title, leadingIcon;
  final Widget? leading;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 53.h,
        width: 433.w,
        decoration: BoxDecoration(
          color: AppColors.faintGrey,
          borderRadius: BorderRadius.circular(1000),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
        child: Row(
          children: [
            leading ??
                SvgPicture.asset(
                  leadingIcon ?? AppImages.noVisisbilityIcon,
                  height: 50.h,
                  width: 50.w,
                ),
            const Spacing.smallWidth(),
            Text(
              title ?? '',
              style: AppTextStyle.headerLarge.copyWith(
                  fontSize: 16,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.visible),
            ),
          ],
        ),
      ),
    );
  }
}
