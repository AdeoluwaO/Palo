import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WidthdrawalAlertDialogue extends StatelessWidget {
  const WidthdrawalAlertDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAlertDialogue(
      child: Column(
        children: [
          //AppImages.errorIcon
          SvgPicture.asset(AppImages.succssIcon),
          const Spacing.mediumHeight(),
          Text(
            //? Oops!
            'Success!',
            style: AppTextStyle.bodyMediumX.copyWith(
              //? AppColors.red
              color: AppColors.green,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacing.mediumHeight(),
          Text(
            'Your account will be credited in minutes',
            style: AppTextStyle.bodySmall.copyWith(
              color: AppColors.black,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacing.mediumHeight(),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Close',
              style: AppTextStyle.bodyMediumX.copyWith(
                fontSize: 14,
                color: AppColors.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
