import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDialogue extends StatelessWidget {
  const AppDialogue({
    super.key,
    required this.title,
    required this.message,
    this.actionButtons,
  });
  final String title, message;
  final List<Widget>? actionButtons;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.transparent,
      elevation: 0,
      content: Container(
        // alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        height: 200.h,
        width: 400.w,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: AppTextStyle.bodyMediumX
                  .copyWith(fontSize: 20, color: AppColors.black),
            ),
            const Spacing.mediumHeight(),
            Expanded(
              child: Text(
                message,
                style: AppTextStyle.bodyMediumX.copyWith(fontSize: 14),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: actionButtons!,
            ),
          ],
        ),
      ),
    );
  }
}
