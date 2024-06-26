import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerRatingWidget extends StatelessWidget {
  const CustomerRatingWidget({
    super.key,
    required this.totalText,
    required this.totalValue,
    required this.customerNumber,
    required this.numberBackgroundColor,
    this.onTap,
  });
  final String totalText, customerNumber, totalValue;
  final Function()? onTap;
  final Color numberBackgroundColor;

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
              child: Row(
                children: [
                  Text(
                    totalValue,
                    style: AppTextStyle.headerLarge.copyWith(fontSize: 30),
                  ),
                  const Spacing.tinyWidth(),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.goldYellow,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.goldYellow,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.goldYellow,
                      ),
                      Icon(
                        Icons.star_outline,
                        color: AppColors.goldYellow,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: 250.h,
              top: 45.h,
              child: Container(
                alignment: Alignment.center,
                height: 26.h,
                width: 106.w,
                decoration: BoxDecoration(
                  color: numberBackgroundColor,
                  borderRadius: BorderRadius.circular(
                      1000
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacing.tinyWidth(),
                      const Spacing.tinyWidth(),
                      Text(
                        customerNumber,
                        style: AppTextStyle.bodySmall.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.green,
                            overflow: TextOverflow.visible),
                      ),
                      Text(
                        'customers',
                        style: AppTextStyle.bodySmall.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.green,
                            overflow: TextOverflow.visible),
                      ),
                      const Spacing.tinyWidth(),
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