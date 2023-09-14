import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentOrderInfoWidget extends StatelessWidget {
  const CurrentOrderInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.purple200,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColors.purple100,
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Order',
              style: AppTextStyle.bodyMediumX.copyWith(color: AppColors.black),
            ),
            const Spacing.mediumHeight(),
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
                      'Order 996789123456',
                      style: AppTextStyle.bodyMediumX
                          .copyWith(color: AppColors.black, fontSize: 14),
                    ),
                    const Spacing.smallHeight(),
                    Container(
                      height: 30.h,
                      width: 90.w,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                      decoration: BoxDecoration(
                        color: AppColors.yellow,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'In Transit',
                        style: AppTextStyle.bodySmall.copyWith(
                            color: AppColors.darkYellow, fontSize: 12),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacing.mediumHeight(),
            const DeliveryTrackerWidget(),
            const Spacing.mediumHeight(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildColumnTexts(
                  title: '6:00pm',
                  subTitle: 'Local government',
                ),
                _buildColumnTexts(
                  title: 'Estimated 9:00pm',
                  subTitle: 'Yaba Tech',
                ),
              ],
            ),
            const Spacing.mediumHeight(),
          ],
        ),
      ),
    );
  }

  Widget _buildColumnTexts({required String title, required String subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.bodySmall,
        ),
        const Spacing.tinyHeight(),
        Text(
          subTitle,
          style: AppTextStyle.bodyMediumX
              .copyWith(color: AppColors.black, fontSize: 12),
        ),
      ],
    );
  }
}
