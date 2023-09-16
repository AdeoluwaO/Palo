import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStatsWidget extends StatelessWidget {
  const CustomStatsWidget({
    super.key,
    required this.totalText,
    required this.totalValue,
    required this.percent,
    required this.percentIcon,
    required this.percentColor,
    required this.percentBackgroundColor,
    this.onTap,
  });
  final String totalText, totalValue, percent, percentIcon;
  final Function()? onTap;
  final Color percentColor, percentBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 106.h,
        width: 400.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightPurple),
            borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey
                  .withOpacity(0.1), // Shadow color
              spreadRadius: 0, // Spread radius
              blurRadius: 3, // Blur radius
              offset: const Offset(
                  0, 1), // Offset for shadow
            ),
          ],
        ),

        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              totalText,
              style: AppTextStyle.headerMedium.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.grey),
            ),
            const Spacing.smallHeight(),
            Positioned(
              top: 30.h,
              child: Text(
                totalValue,
                style: AppTextStyle.headerLarge.copyWith(fontSize: 30),
              ),
            ),
            Positioned(
              left: 300.h,
              top: 45.h,
              child: Container(
                alignment: Alignment.center,
                height: 26.h,
                width: 54.w,
                //padding: EdgeInsets.symmetric(horizontal: 8.w),
                decoration: BoxDecoration(
                  color: percentBackgroundColor,
                  borderRadius: BorderRadius.circular(
                    1000
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacing.tinyWidth(),
                      AppImageView(
                        svgPath: percentIcon,
                        height: 10,
                        width: 10,
                      ),
                      Text(
                        percent,
                        style: AppTextStyle.bodySmall.copyWith(
                            fontWeight: FontWeight.w500,
                            color: percentColor,
                            overflow: TextOverflow.visible),
                      ),
                      const Spacing.tinyWidth(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
