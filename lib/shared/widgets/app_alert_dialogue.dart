import 'package:flutter/material.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppAlertDialogue extends StatelessWidget {
  const AppAlertDialogue({
    super.key,
    required this.child,
    this.color,
    this.width,
    this.height,
    this.borderRadius,
  });
  final Widget child;
  final double? width, height;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
          height: height ?? 280.h,
          width: width ?? 500.w,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          decoration: BoxDecoration(
              color: color ?? AppColors.white,
              borderRadius: borderRadius ?? BorderRadius.circular(30)),
          child: child),
    );
  }
}
