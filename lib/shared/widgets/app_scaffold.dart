import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
    this.title,
    this.centerTitle,
    this.titleText,
  });
  final Widget body;
  final Widget? title;
  final String? titleText;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title ??
            Text(
              titleText ?? '',
              style: AppTextStyle.headerLarge,
            ),
        centerTitle: centerTitle,
        elevation: 0,
        backgroundColor: AppColors.white,
      ),
      backgroundColor: AppColors.white,
      body: body,
    );
  }
}
