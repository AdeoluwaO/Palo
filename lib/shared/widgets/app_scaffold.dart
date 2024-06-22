import 'package:dispatchapp/core/routers/app_route_exports.dart';
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
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   toolbarHeight: largeTitle
      //       ? 200.h
      //       : centerTitle!
      //           ? 60.h
      //           : 120.h,
      //   flexibleSpace: Padding(
      //     padding: EdgeInsets.only(top: 20.h),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         if (showBackButton!)
      //           leading ??
      //               IconButton(
      //                 icon: const Icon(
      //                   Icons.arrow_back,
      //                   size: 30,
      //                   color: AppColors.black,
      //                 ),
      //                 onPressed: () {
      //                   Navigator.pop(context);
      //                 },
      //               ),
      //         const Spacing.mediumHeight(),
      //         Container(
      //           padding: EdgeInsets.symmetric(horizontal: 16.w),
      //           alignment:
      //               centerTitle! ? Alignment.center : Alignment.centerLeft,
      //           child: Text(
      //             titleText ?? '',
      //             style: AppTextStyle.headerLarge,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      //   elevation: 0,
      //   backgroundColor: AppColors.white,
      // ),
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: body),
    );
  }
}
