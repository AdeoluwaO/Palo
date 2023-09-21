import 'package:dispatchapp/features/authentication/presentation/widgets/select_bank_bottomshett.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddVehicleScreen extends StatelessWidget {
  const AddVehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        showBackButton: true,
        titleText: 'Add your vehicle',
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Text(
                        'Upload your vehicle details to ensure\naccurate deliveries',
                        style: AppTextStyle.bodySmall.copyWith(fontSize: 14)),
                    const Spacing.mediumHeight(),
                    AppDropdown(
                      hintText: 'Vehicle type',
                      variant: DropDownVariant.fillWhite,
                      onTap: () {
                        AppShowBottomSheet.appshowModalBottomsheet(
                            context: context,
                            child:
                                //? the bottom sheet to be reusebale for this
                                const SelectBankBottomsheetWidget());
                      },
                    ),
                    const Spacing.mediumHeight(),
                    Row(
                      children: [
                        Expanded(
                          child: AppTextField(
                            hintText: 'Model',
                            onChange: (p0) {},
                          ),
                        ),
                        const Spacing.mediumWidth(),
                        Expanded(
                          child: AppTextField(
                            hintText: 'Year',
                            onChange: (p0) {},
                          ),
                        ),
                      ],
                    ),
                    const Spacing.mediumHeight(),
                    AppTextField(
                      hintText: 'Registration number',
                      onChange: (p0) {},
                      suffixIcon: Tooltip(
                        message: 'Bicycles are exempted',
                        textStyle: AppTextStyle.bodySmall
                            .copyWith(fontSize: 13, color: AppColors.black),
                        // margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            border: Border.all(color: AppColors.lightPurple),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            )),
                        child: IconButton(
                          icon: const Icon(Icons.info_outline_rounded),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    const Spacing.largeHeight(),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        AppImageView(
                          color: AppColors.lightPurple,
                          height: 150.h,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Transform.flip(
                                flipX: true,
                                child: const Icon(
                                  Icons.add_a_photo_outlined,
                                  size: 60,
                                  color: AppColors.grey,
                                ),
                              ),
                              const Spacing.mediumHeight(),
                              Text(
                                'Take vehicle picture',
                                style: AppTextStyle.bodySmall.copyWith(
                                    fontSize: 16, color: AppColors.black),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              AppButton(
                title: 'Save',
                width: 240.w,
                color: AppColors.darkRed,
                onTap: () {
                  AppShowTopSnackbar.appshowTopSnackBar(
                      context: context,
                      child: const AppSnackbar(
                          message: 'Vehicle added successfully!'));
                },
              ),
              const Spacing.mediumHeight(),
            ],
          ),
        ));
  }
}
