import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoContainerAuth extends StatelessWidget {
  const InfoContainerAuth(
      {super.key, this.leadingIcon, required this.message, this.onTap});
  final Widget? leadingIcon;
  final String message;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
            color: AppColors.lightPurple,
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          children: [
            leadingIcon ?? const SizedBox.shrink(),
            Text(
              message,
              style: AppTextStyle.redHatMedium.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.grey),
            )
          ],
        ),
      ),
    );
  }
}
