import 'dart:developer';

import 'package:dispatchapp/features/wallet/presentation/widgets/info_contaner.dart';
import 'package:dispatchapp/features/wallet/presentation/widgets/withdraw_bottomsheet.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidthdrawFundsScreen extends StatelessWidget {
  const WidthdrawFundsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        showBackButton: true,
        titleText: 'Withdraw funds',
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                physics: const BouncingScrollPhysics(),
                children: [
                  AppTextField(
                    hintText: 'Amount to widthdraw',
                    width: 100.w,
                  ),
                  const Spacing.mediumHeight(),
                  AppTextField(
                    hintText: 'Enter your password',
                    width: 100.w,
                  ),
                  const Spacing.mediumHeight(),
                  const AccountInfoContainer(
                    title: '2143588371',
                    titleStyle: AppTextStyle.bodyMedium,
                    alignment: Alignment.centerLeft,
                    color: AppColors.lightPurple,
                    borderRadius: 12,
                  ),
                  const Spacing.mediumHeight(),
                  const AccountInfoContainer(
                    title: 'First Bank',
                    titleStyle: AppTextStyle.bodyMedium,
                    alignment: Alignment.centerLeft,
                    color: AppColors.lightPurple,
                    borderRadius: 12,
                  ),
                  const Spacing.mediumHeight(),
                  const AccountInfoContainer(
                    title: 'Adesemoye Promise',
                    titleStyle: AppTextStyle.bodyMedium,
                    alignment: Alignment.centerLeft,
                    color: AppColors.lightPurple,
                    borderRadius: 12,
                  ),
                  const Spacing.mediumHeight(),
                ],
              ),
            ),
            AppButton(
              title: 'Widthdraw now',
              width: 240.w,
              titleStyle:
                  AppTextStyle.bodyMedium.copyWith(color: AppColors.white),
              color: AppColors.darkRed,
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => const WithdrawBottomSheet(
                          message:
                              'You are about to make a withdrawal to this Firstbank account with number 3115607405',
                        ));
              },
            ),
            const Spacing.mediumHeight(),
            AppButton(
              title: 'Cancel',
              width: 100.w,
              titleStyle:
                  AppTextStyle.bodyMedium.copyWith(color: AppColors.darkRed),
              onTap: () {},
            ),
            const Spacing.mediumHeight(),
          ],
        ));
  }
}
