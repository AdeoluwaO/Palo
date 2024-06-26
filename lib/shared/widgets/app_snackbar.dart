import 'package:dispatchapp/features/profile/provider/profile_provider.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AppSnackbar extends StatelessWidget {
  const AppSnackbar({super.key, required this.message, this.image});
  final String message;
  final String? image;

  @override
  Widget build(BuildContext context) {
    final response = context.read<ProfileProvider>();
    final profile = response.profileResp?.profile;
    return Container(
      height: 90.h,
      // width: 330.w,
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
           CircleAvatar(
            radius: 30,
             foregroundImage: NetworkImage(profile?.avatar ?? ''),
          ),
          const Spacing.smallWidth(),
          SizedBox(
            width: 200.w,
            child: Text(
              message,
              maxLines: 2,
              style: AppTextStyle.headerLarge.copyWith(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
