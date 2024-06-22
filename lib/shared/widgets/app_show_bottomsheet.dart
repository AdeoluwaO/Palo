import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppShowBottomSheet {
  static Future<void> appshowModalBottomsheet({
    required BuildContext context,
    required List<Widget> children,
    String? title,
  }) async {
    return showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      backgroundColor: AppColors.transparent,
      isScrollControlled: true,
      builder: (context) => StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
       
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 200),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null)
                  Text(
                    title,
                    style: AppTextStyle.headerLarge.copyWith(
                      color: AppColors.darkRed,
                    ),
                  ),
                const Spacing.mediumHeight(),
                ...children,
                const Spacing.mediumHeight(),
                // const Spacer()
              ],
            ),
          ),
        );
      }),
    );
  }
}
