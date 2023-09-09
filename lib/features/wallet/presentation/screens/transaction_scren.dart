import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        showBackButton: true,
        titleText: 'Transaction',
        body: Column(
          children: [
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                children: [
                  const Spacing.mediumHeight(),
                  const CircleAvatar(
                    radius: 60,
                    foregroundImage: AssetImage(AppImages.testProfileImage),
                  ),
                  const Spacing.mediumHeight(),
                  Text(
                    'Transaction Amount',
                    style: AppTextStyle.headerLarge.copyWith(
                      color: AppColors.grey,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacing.mediumHeight(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppImages.nairaIconBlack),
                      Text(
                        '6000',
                        style: AppTextStyle.headerLarge.copyWith(fontSize: 32),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Spacing.mediumHeight(),
                  Text(
                    'Transaction details',
                    style: AppTextStyle.headerLarge.copyWith(
                      color: AppColors.black,
                      fontSize: 16,
                    ),
                  ),
                  const Spacing.mediumHeight(),
                  _buildDetails('On', '11th May, 2022 6:13pm'),
                  const Spacing.mediumHeight(),
                  _buildDetails('Type', 'Credit'),
                  const Spacing.mediumHeight(),
                  _buildDetails('Order number', '234567890'),
                  const Spacing.mediumHeight(),
                  _buildDetails('Description', 'Order completed'),
                ],
              ),
            ),
            AppButton(
              title: 'Print reciept',
              color: AppColors.darkRed,
              width: 240.w,
              borderRadius: 100,
              titleStyle: AppTextStyle.bodyMediumWhite,
              onTap: () {},
            ),
            const Spacing.mediumHeight(),
          ],
        ));
  }

  Widget _buildDetails(String title, String message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.bodyMediumX.copyWith(fontSize: 14),
        ),
        Text(
          message,
          style: AppTextStyle.bodyMediumX.copyWith(
            fontSize: 14,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
