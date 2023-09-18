import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatsInfoWidget extends StatelessWidget {
  const StatsInfoWidget({
    super.key,
    required this.totalText,
    required this.totalValue,
    required this.percent,
    required this.percentIcon,
    required this.percentColor,
    required this.chartImage,
    this.onTap,
  });
  final String totalText, totalValue, chartImage, percent, percentIcon;
  final Function()? onTap;
  final Color percentColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 138.h,
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
              top: 80.h,
              child: Row(
                children: [
                  AppImageView(
                    svgPath: percentIcon,
                    height: 10,
                    width: 10,
                  ),
                  const Spacing.smallWidth(),
                  Text(
                    percent,
                    style: AppTextStyle.bodySmall.copyWith(
                        fontWeight: FontWeight.w500,
                        color: percentColor,
                        fontSize: 14,
                        overflow: TextOverflow.visible),
                  ),
                  const Spacing.tinyWidth(),
                  Text(
                    ' vs last month',
                    style: AppTextStyle.headerMedium.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColors.grey),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 50.h,
              left: 270.w,
              child: AppImageView(
                svgPath: chartImage,
                width: 96.w,
                height: 48.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}