import 'package:dispatchapp/features/authentication/presentation/widgets/select_bank_bottomshett.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddWidthdrawalAccountScreen extends StatelessWidget {
  const AddWidthdrawalAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        showBackButton: true,
        titleText: 'Add withdrawal account',
        body: ListView(
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            Text('This is to help us create your wallet',
                style: AppTextStyle.bodySmall.copyWith(fontSize: 14)),
            const Spacing.mediumHeight(),
            AppTextField(
              hintText: 'Account Number',
              onChange: (p0) {},
            ),
            const Spacing.mediumHeight(),
            AppDropdown(
              hintText: 'Account Number',
              variant: DropDownVariant.fillWhite,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const SelectBankBottomsheetWidget();
                  },
                );
              },
            ),
            const Spacing.mediumHeight(),
            AppTextField(
              hintText: 'NIN',
              onChange: (p0) {},
              suffixIcon: IconButton(
                tooltip: 'This is to help you create your wallet',
                icon: const Icon(Icons.info_outline_rounded),
                onPressed: () {},
              ),
            ),
            const Spacing.mediumHeight(),
            AppButton(
                title: "Save",
                color: AppColors.darkRed,
                onTap: () {
                  showTopSnackBar(
                    context,
                    const AppSnackbar(
                        message: 'Withdrawal account  added successfully!'),
                  );
                }),
            const Spacing.mediumHeight(),
          ],
        ));
  }
}
