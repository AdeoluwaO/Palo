import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    super.key,
    required this.balance,
    required this.onTap,
  });
  final String balance;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200.h,
        width: 200.w,
        padding: EdgeInsets.symmetric(vertical: 20.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Text(
              'Current Balance',
              style: AppTextStyle.bodyMediumX.copyWith(color: AppColors.white),
            ),
            const Spacing.bigHeight(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.nairaIcon),
                Text(
                  balance,
                  style:
                      AppTextStyle.bodyMediumX.copyWith(color: AppColors.white),
                ),
              ],
            ),
            const Spacing.bigHeight(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.outboundIcon),
                const Spacing.smallWidth(),
                Text(
                  'Withdraw',
                  style:
                      AppTextStyle.bodyMediumX.copyWith(color: AppColors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
