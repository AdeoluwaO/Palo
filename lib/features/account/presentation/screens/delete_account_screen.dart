import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'Delete account',
        showBackButton: true,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                ),
                const Spacing.mediumWidth(),
                Text(
                  'Promise Tosin',
                  style: AppTextStyle.bodyMediumX
                      .copyWith(color: AppColors.black, fontSize: 14),
                ),
              ],
            )
          ],
        ));
  }
}
