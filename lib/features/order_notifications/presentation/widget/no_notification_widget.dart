import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoNotificationsWidget extends StatelessWidget {
  const NoNotificationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Icon(
            Icons.visibility_off_outlined,
            size: 60,
            color: AppColors.grey,
          ),
          Spacing.mediumHeight(),
          Text(
            'Nothing to see yet',
            style: AppTextStyle.headerMedium,
            textAlign: TextAlign.center,
          ),
          Spacing.mediumHeight(),
          Text(
            'You will get updates on your \n account and orders here',
            style: AppTextStyle.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
