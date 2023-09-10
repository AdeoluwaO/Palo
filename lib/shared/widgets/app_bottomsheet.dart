import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    super.key,
    required this.child,
    this.height,
    this.color,
    this.borderRadius,
  });
  final double? height;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        height: height ?? 300.h,
        decoration: BoxDecoration(
          borderRadius: borderRadius ??
              const BorderRadius.vertical(top: Radius.circular(20)),
          color: color ?? AppColors.white,
        ),
        child: child);
  }
}
