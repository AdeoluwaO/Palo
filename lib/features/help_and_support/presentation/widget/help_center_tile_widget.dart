import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpCenterTile extends StatelessWidget {
  const HelpCenterTile(
      {super.key,
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
      this.leading});
  final String title;
  final Alignment? alignment;
  final Color? color, borderColor;
  final BoxBorder? border;
  final EdgeInsets? padding;
  final double? width, height, borderRadius;
  final TextStyle? titleStyle;
  final Widget? leading, suffixWidget;
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
          children: [
            leading ?? const SizedBox.shrink(),
            const Spacing.mediumWidth(),
            Text(
              title,
              style: titleStyle ?? AppTextStyle.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
