import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/widgets/app_button.dart';
import 'package:dispatchapp/shared/widgets/app_dialogue.dart';
import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:dispatchapp/shared/widgets/app_text_input.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmDeleteccountScreen extends StatelessWidget {
  const ConfirmDeleteccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'Kindly tell us why you want to delete your account',
        showBackButton: true,
        //? expands the heigt of the app bar to contain it
        largeTitle: true,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            const Spacing.mediumHeight(),
            AppTextField(
              hintText: 'Tell us why',
              maxLines: 8,
              onChange: (p0) {},
            ),
            const Spacing.mediumHeight(),
            AppButton(
              title: 'Delete account',
              color: AppColors.darkRed,
              onTap: () {
                AppShowDialogue.showDialogue(
                  context: context,
                  child: AppDialogue(
                    title: 'Are you sure you want to delete your account?',
                    message: 'Once deleted, your data will be lost',
                    actionButtons: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancel',
                            style: AppTextStyle.bodyMediumX
                                .copyWith(fontSize: 14, color: AppColors.black),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context,
                                RouteGenerator.deleteAccountSuccessScreen);
                          },
                          child: Text(
                            'Delete account',
                            style: AppTextStyle.bodyMediumX.copyWith(
                                fontSize: 14, color: AppColors.darkRed),
                          )),
                    ],
                  ),
                );
              },
            ),
          ],
        ));
  }
}
