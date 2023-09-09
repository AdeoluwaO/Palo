import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'More',
      centerTitle: true,
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          AppImageView(
            color: AppColors.primaryColor,
            height: 100.h,
            width: 100.w,
            imagePath: AppConstants.testProfileImage,
          ),
          const Spacing.smallHeight()
        ],
      ),
    );
  }
}
