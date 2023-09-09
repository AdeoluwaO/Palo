import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppAlertDialogue extends StatelessWidget {
  const AppAlertDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 207.h,
      width: 312.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          SvgPicture.asset(AppImages.succssIcon),
          Text(''),
          Text(''),
          Text('')
        ],
      ),
    );
  }
}
