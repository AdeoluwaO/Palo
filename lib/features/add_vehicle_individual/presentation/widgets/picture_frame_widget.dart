import 'dart:io';
import 'package:dispatchapp/features/add_vehicle_individual/presentation/provider/add_vehicle_individual_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../shared/constants/app_text_style.dart';
import '../../../../shared/constants/colors.dart';
import '../../../../shared/constants/images.dart';
import '../../../../shared/widgets/app_image_view.dart';
import '../../../../shared/widgets/app_spacing.dart';

class PictureFrame extends StatelessWidget {
  const PictureFrame({super.key, this.title, this.onTap});
  final String? title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 396.w,
          height: 121.h,
          decoration: BoxDecoration(
            color: AppColors.faintGrey,
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Consumer<AddVehicleIndividualProvider>(
              builder: (context, imageProvider, child) {
            return imageProvider.imageFile != null
                ? Center(
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.file(
                          File(imageProvider.imageFile!.path),
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                          child: Column(
                        children: [
                          const Spacing.bigHeight(),
                          AppImageView(
                            svgPath: AppImages.addPhotoIcon,
                            color: AppColors.white,
                          ),
                          const Spacing.smallHeight(),
                          Text(
                            title ?? '',
                            style: AppTextStyle.headerLarge.copyWith(
                                fontSize: 16,
                                color: AppColors.white,
                                fontWeight: FontWeight.w400,
                                overflow: TextOverflow.visible),
                          ),
                        ],
                      ))
                    ]),
                  )
                : Center(
                    child: Column(
                    children: [
                      const Spacing.bigHeight(),
                      AppImageView(svgPath: AppImages.addPhotoIcon),
                      const Spacing.smallHeight(),
                      Text(
                        title ?? '',
                        style: AppTextStyle.headerLarge.copyWith(
                            fontSize: 16,
                            color: AppColors.darkGrey,
                            fontWeight: FontWeight.w400,
                            overflow: TextOverflow.visible),
                      ),
                    ],
                  ));
          }),
        ));
  }
}
