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
    this.width,
    this.height,
  });
  final String title, message;
  final List<Widget>? actionButtons;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.transparent,
      elevation: 0,
      content: Container(
        // alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        height: height ?? 250,
        width: width ?? 600,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Text(
              title,
              style: AppTextStyle.headerLarge
                  .copyWith(fontSize: 16, color: AppColors.darkRed,),
                  textAlign: TextAlign.center,
            ),
            const Spacing.mediumHeight(),
            Text(
              message,
              style: AppTextStyle.bodyMediumX.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
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
