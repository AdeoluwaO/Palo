import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderCustomButton extends StatelessWidget {
  const OrderCustomButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.backgroundColor,
  });
  final Function() onTap;
  final Widget icon;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: backgroundColor ?? AppColors.white,
        ),
        child: icon,
      ),
    );
  }
}
