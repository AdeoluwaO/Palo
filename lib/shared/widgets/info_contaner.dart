import 'package:another_flushbar/flushbar.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountInfoContainer extends StatelessWidget {
  const AccountInfoContainer({
    super.key,
    required this.title,
    this.width,
    this.borderRadius,
    this.height,
    this.color,
    this.border,
    this.alignment,
    this.borderColor,
    this.padding,
    this.titleStyle,
    this.suffixWidget,
    this.borderWidth,
    this.onTap,
  });
  final String title;
  final Alignment? alignment;
  final Color? color, borderColor;
  final BoxBorder? border;
  final EdgeInsets? padding;
  final double? width, height, borderRadius;
  final TextStyle? titleStyle;
  final Widget? suffixWidget;
  final double? borderWidth;
  final Function()? onTap;
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
          color: color ?? AppColors.lightPurple,
          border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: borderWidth ?? 0,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
        ),
        alignment: alignment ?? Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: titleStyle ?? AppTextStyle.bodyMedium,
            ),
            suffixWidget ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
