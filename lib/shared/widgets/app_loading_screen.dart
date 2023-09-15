import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';

class AppLoadingScreen extends StatelessWidget {
  const AppLoadingScreen({
    super.key,
    required this.message,
  });
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
            const Spacing.mediumHeight(),
            Text(
              message,
              style: AppTextStyle.bodySmall
                  .copyWith(fontSize: 14, color: AppColors.black),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
