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
                      suffixIcon: IconButton(
                        tooltip: 'Bicycles are exempted',
                        icon: const Icon(Icons.info_outline_rounded),
                        onPressed: () {},
                      ),
                    ),
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
