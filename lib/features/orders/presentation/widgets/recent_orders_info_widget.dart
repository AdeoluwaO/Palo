import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentOrderInfoWidget extends StatelessWidget {
  const RecentOrderInfoWidget(
      {super.key,
      required this.orderImage,
      required this.orderId,
      required this.orderStatus,
      required this.orderStatusTextColor,
      required this.orderStatusBackgroundColor,
      this.onTap,
      this.suffixIcon});
  final String orderImage, orderId, orderStatus;
  final Function()? onTap;
  final Color orderStatusTextColor, orderStatusBackgroundColor;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightPurple),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                AppImageView(
                  imagePath: AppImages.orderImage,
                  height: 60.h,
                  width: 60.w,
                  // color: AppColors.primaryColor,
                  radius: BorderRadius.circular(0),
                ),
                const Spacing.mediumWidth(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderId,
                      style: AppTextStyle.bodyMediumX
                          .copyWith(fontSize: 14, color: AppColors.black),
                    ),
                    const Spacing.smallHeight(),
                    Container(
                      height: 30.h,
                      width: 90.w,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                      decoration: BoxDecoration(
                        color: orderStatusBackgroundColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        orderStatus,
                        style: AppTextStyle.bodySmall.copyWith(
                          fontWeight: FontWeight.w500,
                          color: orderStatusTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (suffixIcon != null) suffixIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
