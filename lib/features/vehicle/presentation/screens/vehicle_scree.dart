import 'dart:developer';

import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VehicleScreen extends StatefulWidget {
  const VehicleScreen({super.key});

  @override
  State<VehicleScreen> createState() => _VehicleScreenState();
}

class _VehicleScreenState extends State<VehicleScreen> {
  bool bikeIsSelected = false;
  bool suzukiIsSelected = false;
  bool yearIsSelected = false;
  bool arkIsSelected = false;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      showBackButton: true,
      titleText: 'My Vehicle',
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          const Spacing.mediumHeight(),
          AppButton(
            title: 'Motorbike',
            alignment: Alignment.centerLeft,
            onTap: () {
              setState(() => bikeIsSelected = !bikeIsSelected);
            },
            borderRadius: 12,
            borderColor: bikeIsSelected ? AppColors.grey : null,
            color: !bikeIsSelected ? AppColors.lightPurple : null,
            titleStyle: AppTextStyle.bodyMediumX,
          ),
          const Spacing.mediumHeight(),
          Row(
            children: [
              Expanded(
                child: AppButton(
                  title: 'Suzuki',
                  alignment: Alignment.centerLeft,
                  onTap: () {
                    setState(() => suzukiIsSelected = !suzukiIsSelected);
                  },
                  borderRadius: 12,
                  borderColor: suzukiIsSelected ? AppColors.grey : null,
                  color: !suzukiIsSelected ? AppColors.lightPurple : null,
                  titleStyle: AppTextStyle.bodyMediumX,
                ),
              ),
              const Spacing.mediumWidth(),
              Expanded(
                child: AppButton(
                  title: '2013',
                  alignment: Alignment.centerLeft,
                  onTap: () {
                    setState(() => yearIsSelected = !yearIsSelected);
                  },
                  borderRadius: 12,
                  borderColor: yearIsSelected ? AppColors.grey : null,
                  color: !yearIsSelected ? AppColors.lightPurple : null,
                  titleStyle: AppTextStyle.bodyMediumX,
                ),
              ),
            ],
          ),
          const Spacing.mediumHeight(),
          AppButton(
            title: 'AKR-111-222',
            alignment: Alignment.centerLeft,
            onTap: () {
              setState(() => arkIsSelected = !arkIsSelected);
            },
            borderRadius: 12,
            borderColor: arkIsSelected ? AppColors.grey : null,
            color: !arkIsSelected ? AppColors.lightPurple : null,
            titleStyle: AppTextStyle.bodyMediumX,
          ),
          const Spacing.bigHeight(),
          AppImageView(
            height: 200.h,
            width: 335.w,
            imagePath: AppImages.testVehicleImage,
            radius: BorderRadius.circular(20),
          ),
          const Spacing.mediumHeight(),
          AppImageView(
            height: 200.h,
            width: 335.w,
            imagePath: AppImages.testVehicleImage,
            radius: BorderRadius.circular(20),
          ),
          const Spacing.bigHeight(),
          AppButton(
            title: 'Update vehicle',
            onTap: () {},
            height: 59.h,
            width: 240.w,
            color: AppColors.darkRed,
            titleStyle: AppTextStyle.bodyMediumWhite,
            borderRadius: 100,
          ),
          const Spacing.mediumHeight(),
          AppButton(
            title: 'cancle',
            titleStyle:
                AppTextStyle.bodyMediumWhite.copyWith(color: AppColors.darkRed),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
