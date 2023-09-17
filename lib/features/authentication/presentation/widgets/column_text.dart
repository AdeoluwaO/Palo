import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';

class AuthColumnText extends StatelessWidget {
  const AuthColumnText({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.headerLarge
              .copyWith(fontSize: 24, color: AppColors.black),
        ),
        const Spacing.smallHeight(),
        Text(subtitle, style: AppTextStyle.bodySmall.copyWith(fontSize: 14)),
      ],
    );
  }
}
