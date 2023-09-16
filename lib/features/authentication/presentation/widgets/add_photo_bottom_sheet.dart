import 'dart:developer';

import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class AppPhotoBottomsheet extends StatelessWidget {
  const AppPhotoBottomsheet({super.key, required this.onSelctedImage});
  final void Function(String image) onSelctedImage;

  @override
  Widget build(BuildContext context) {
    final imagePicker = ImagePicker();
    return Container(
      height: 250.h,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Text(
              'Add photo',
              style: AppTextStyle.headerLarge.copyWith(
                color: AppColors.black,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(),
          TextButton(
            onPressed: () async {
              final camerImage =
                  await imagePicker.pickImage(source: ImageSource.camera);
              if (camerImage?.path != null) {
                onSelctedImage(camerImage!.path);
              }
            },
            child: Text(
              'Take photo',
              style: AppTextStyle.bodySmall.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(),
          TextButton(
            onPressed: () async {
              final galleryImage =
                  await imagePicker.pickImage(source: ImageSource.gallery);
              if (galleryImage?.path != null) {
                onSelctedImage(galleryImage!.path);
              }
            },
            child: Text(
              'Choose photo',
              style: AppTextStyle.bodySmall.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
