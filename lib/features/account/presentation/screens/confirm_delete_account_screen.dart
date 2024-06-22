import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/core/utils/app_validators.dart';
import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmDeleteccountScreen extends StatefulWidget {
  const ConfirmDeleteccountScreen({super.key});

  @override
  State<ConfirmDeleteccountScreen> createState() =>
      _ConfirmDeleteccountScreenState();
}

class _ConfirmDeleteccountScreenState extends State<ConfirmDeleteccountScreen> {
  TextEditingController reasonController = TextEditingController();

  @override
  
  Widget build(BuildContext context) {
    final canSubmmit = reasonController.text.isNotEmpty;
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
              controller: reasonController,
              validateFunction: AppValidators.notEmpty(),
              onChange: (p0) {
                reasonController.text = p0;
                setState(() {
                  
                });
              }
              ,
            ),
            const Spacing.mediumHeight(),
            AppButton(
              title: 'Delete account',
              color: canSubmmit
                  ? AppColors.darkRed
                  : AppColors.darkRed.withOpacity(0.2),
              onTap: !canSubmmit
                  ? () {}
                  : () {
                      AppShowDialogue.showDialogue(
                        context: context,
                        child: AppDialogue(
                          title:
                              'Are you sure you want to delete your account?',
                          message: 'All data will be cleared !!!',
                          actionButtons: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: AppTextStyle.bodyMediumX.copyWith(
                                      fontSize: 14, color: AppColors.black),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, RouteGenerator.onboardingScreen);
                                },
                                child: Text(
                                  'Delete account',
                                  style: AppTextStyle.bodyMediumX.copyWith(
                                      fontSize: 14, color: AppColors.darkRed),
                                )),
                          ],
                        ),
                      );
                      AppShowDialogue.showDialogue(
                        context: context,
                        child: AppDialogue(
                          title:
                              'Are you sure you want to delete your account?',
                          message: 'All data will be cleared !!!',
                          actionButtons: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: AppTextStyle.bodyMediumX.copyWith(
                                      fontSize: 14, color: AppColors.black),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, RouteGenerator.onboardingScreen);
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
