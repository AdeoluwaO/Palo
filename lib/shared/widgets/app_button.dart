import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.onTap,
    this.width,
    this.borderRadius,
    this.height,
    this.color,
    this.border,
    this.alignment,
    this.borderColor,
    this.padding,
    this.titleStyle,
  });
  final Function() onTap;
  final String title;
  final Alignment? alignment;
  final Color? color, borderColor;
  final BoxBorder? border;
  final EdgeInsets? padding;
  final double? width, height, borderRadius;
  final TextStyle? titleStyle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 64.h,
        width: width ?? 60.w,
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 14.w, vertical: 18.h),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 30),
        ),
        alignment: alignment ?? Alignment.center,
        child: Text(
          title,
          style: titleStyle ??
              AppTextStyle.headerLarge
                  .copyWith(fontSize: 16, color: AppColors.white),
        ),
      ),
    );
  }
}
