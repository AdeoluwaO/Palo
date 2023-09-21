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
        body: ListView(
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
            ),
            const Spacing.mediumHeight(),
            const AccountInfoContainer(
              title: 'First Bank',
            ),
            const Spacing.mediumHeight(),
            const AccountInfoContainer(
              title: 'Adesemoye Promise',
            ),
            const Spacing.mediumHeight(),
            AppButton(
              title: 'Widthdraw now',
              width: 240.w,
              titleStyle:
                  AppTextStyle.bodyMedium.copyWith(color: AppColors.white),
              color: AppColors.darkRed,
              onTap: () {
                AppShowBottomSheet.appshowModalBottomsheet(
                    context: context,
                    child: const WithdrawBottomSheet(
                      message:
                          'You are about to make a withdrawal to this Firstbank account with number 3115607405',
                    ));
              },
            ),
            const Spacing.mediumHeight(),
            Align(
              alignment: Alignment.bottomCenter,
              child: AppButton(
                title: 'Cancel',
                width: 150.w,
                titleStyle:
                    AppTextStyle.bodyMedium.copyWith(color: AppColors.darkRed),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const Spacing.mediumHeight(),
          ],
        ));
  }
}
