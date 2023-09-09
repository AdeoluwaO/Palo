import 'package:dispatchapp/features/wallet/presentation/widgets/widthdrawal_dialogue.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WithdrawBottomSheet extends StatelessWidget {
  const WithdrawBottomSheet({
    super.key,
    required this.message,
  });
  final String message;
  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        children: [
          const Text(
            'Confirm Widthdrawal',
            style: AppTextStyle.redHatMedium,
            textAlign: TextAlign.center,
          ),
          const Spacing.mediumHeight(),
          Text(
            message,
            style: AppTextStyle.bodyMedium.copyWith(color: AppColors.black),
            textAlign: TextAlign.center,
          ),
          const Spacing.bigHeight(),
          AppButton(
            title: 'Widthdraw now',
            width: 240.w,
            titleStyle:
                AppTextStyle.bodyMedium.copyWith(color: AppColors.white),
            color: AppColors.darkRed,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => WidthdrawalAlertDialogue(),
              );
            },
          ),
          const Spacing.smallHeight(),
          AppButton(
            title: 'Cancel',
            width: 100.w,
            titleStyle:
                AppTextStyle.bodyMedium.copyWith(color: AppColors.darkRed),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
