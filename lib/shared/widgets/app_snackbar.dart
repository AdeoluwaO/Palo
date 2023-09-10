import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSnackbar extends StatelessWidget {
  const AppSnackbar({super.key, required this.message, this.image});
  final String message;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 320.w,
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
          ),
          const Spacing.smallWidth(),
          Text(
            message,
            style: AppTextStyle.headerLarge.copyWith(fontSize: 16),
          )
        ],
      ),
    );
  }
}
