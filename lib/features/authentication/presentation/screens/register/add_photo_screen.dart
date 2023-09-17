import 'dart:developer';

import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/authentication/presentation/widgets/add_photo_bottom_sheet.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AddProfilePhotoScreen extends StatefulWidget {
  const AddProfilePhotoScreen({super.key});

  @override
  State<AddProfilePhotoScreen> createState() => _AddProfilePhotoScreenState();
}

class _AddProfilePhotoScreenState extends State<AddProfilePhotoScreen> {
  String? userProfile;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        showBackButton: true,
        body: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const Spacing.mediumHeight(),
                    const Center(
                        child: Icon(
                      Icons.account_circle_outlined,
                      color: AppColors.primaryColor,
                    )),
                    const Spacing.mediumHeight(),
                    Text(
                      'Add your photo',
                      style: AppTextStyle.headerLarge
                          .copyWith(fontSize: 24, color: AppColors.black),
                      textAlign: TextAlign.center,
                    ),
                    const Spacing.smallHeight(),
                    Text(
                      'Your photo will be used by printers\nto identify you',
                      style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    const Spacing.largeHeight(),
                    AppImageView(
                      url: userProfile,
                      placeHolder: AppImages.placeholderImage,
                      color: AppColors.black,
                    )
                  ],
                ),
              ),
              AppButton(
                  title: 'Add photo',
                  color: AppColors.darkRed,
                  width: 240.w,
                  onTap: () {
                    _bottomSheet();
                  }),
              if (userProfile != null)
                AppButton(
                    title: 'Change photo',
                    titleStyle: AppTextStyle.bodySmall
                        .copyWith(color: AppColors.darkRed),
                    onTap: () {
                      _bottomSheet();
                    }),
            ],
          ),
        ));
  }

  _bottomSheet() {
    AppShowBottomSheet.appshowModalBottomsheet(
      context: context,
      child: AppPhotoBottomsheet(
        onSelctedImage: (image) {
          setState(() => userProfile = image);
          log('$userProfile');
          if (userProfile != null) {
            AppShowTopSnackbar.appshowTopSnackBar(
                context: context,
                child: const AppSnackbar(
                    message: 'Profile photo added successfully!'));

            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
