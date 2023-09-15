import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/constants/images.dart';
import 'package:dispatchapp/shared/widgets/app_image_view.dart';
import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
      titleText: 'Order 996789123456',
      showBackButton: true,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          Stack(
            children: [
              AppImageView(
                imagePath: AppImages.testImage,
                width: size.width,
                height: 215.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      tooltip: 'previous',
                      onPressed: () {},
                      icon: Icon(Icons.chevron_left)),
                  IconButton(
                      tooltip: 'next',
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right))
                ],
              ),
            ],
          ),
          const Spacing.mediumHeight(),
          Text(
            'Order details',
            style: AppTextStyle.headerLarge
                .copyWith(fontSize: 16, color: AppColors.black),
          ),
          const Spacing.mediumHeight(),
          _rowText(title: 'On', message: '11th May, 2022 6:13pm'),
          const Spacing.mediumHeight(),
          _rowText(title: 'Customer name', message: 'Mr Printer'),
          const Spacing.mediumHeight(),
          _rowText(title: 'Printer name', message: '6000'),
          const Spacing.mediumHeight(),
          _rowText(title: 'Order weight', message: '20kg'),
          const Spacing.mediumHeight(),
          _rowText(title: 'Vehicle used', message: 'Motorcycle'),
          const Spacing.mediumHeight(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Status',
                style: AppTextStyle.bodyMediumX.copyWith(fontSize: 14),
              ),
              Container(
                height: 30.h,
                width: 90.w,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.green200,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Completed',
                  style: AppTextStyle.bodySmall
                      .copyWith(color: AppColors.darkGreen, fontSize: 12),
                ),
              ),
            ],
          ),
          const Spacing.mediumHeight(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Customer rating',
                style: AppTextStyle.bodyMediumX.copyWith(fontSize: 14),
              ),
              Row(
                children: [
                  Text(
                    '4.0',
                    style: AppTextStyle.bodyMediumX
                        .copyWith(fontSize: 16, color: AppColors.black),
                  ),
                  const Icon(
                    Icons.star,
                    color: AppColors.goldYellow,
                  ),
                  const Icon(
                    Icons.star,
                    color: AppColors.goldYellow,
                  ),
                  const Icon(
                    Icons.star,
                    color: AppColors.goldYellow,
                  ),
                  const Icon(
                    Icons.star_outline,
                    color: AppColors.goldYellow,
                  ),
                ],
              )
            ],
          ),
          const Spacing.mediumHeight(),
          Text(
            'Customer comment',
            style: AppTextStyle.bodyMediumX.copyWith(fontSize: 14),
          ),
          const Spacing.mediumHeight(),
          Text(
            'A town hall different from balablu',
            style: AppTextStyle.bodyMediumX
                .copyWith(fontSize: 14, color: AppColors.black),
          ),
        ],
      ),
    );
  }

  Widget _rowText({required String title, required String message}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.bodyMediumX.copyWith(fontSize: 14),
        ),
        Text(
          message,
          style: AppTextStyle.bodyMediumX
              .copyWith(fontSize: 14, color: AppColors.black),
        ),
      ],
    );
  }
}
