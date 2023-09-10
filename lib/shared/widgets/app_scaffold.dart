import 'dart:developer';

import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold(
      {super.key,
      required this.body,
      this.leading,
      this.centerTitle = false,
      this.largeTitle = false,
      this.titleText,
      this.showBackButton = false});
  final Widget body;
  final Widget? leading;
  final String? titleText;
  final bool? centerTitle, showBackButton;
  //? this helps to expand the app bar height
  //? when the title like [Confrim Delete Account] screen is large
  final bool largeTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: centerTitle!
            ? Size.fromHeight(80.h)
            : !largeTitle
                ? Size.fromHeight(130.h)
                : Size.fromHeight(200.h),
        child: AppBar(
          flexibleSpace: Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                showBackButton!
                    ? leading ??
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: AppColors.black,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            log('POPING');
                          },
                        )
                    : const SizedBox.shrink(),
                const Spacing.mediumHeight(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  alignment:
                      centerTitle! ? Alignment.center : Alignment.centerLeft,
                  child: Text(
                    titleText ?? '',
                    style: AppTextStyle.headerLarge,
                  ),
                ),
              ],
            ),
          ),
          elevation: 0,
          backgroundColor: AppColors.white,
        ),
      ),
      backgroundColor: AppColors.white,
      body: body,
    );
  }
}
