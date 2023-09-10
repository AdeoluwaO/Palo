import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWidthdrawalScreen extends StatefulWidget {
  const MyWidthdrawalScreen({super.key});

  @override
  State<MyWidthdrawalScreen> createState() => _MyWidthdrawalScreenState();
}

class _MyWidthdrawalScreenState extends State<MyWidthdrawalScreen> {
  bool updatedWidthdrawalDetails = false;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'My withdrawal account',
        showBackButton: true,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            const Spacing.mediumHeight(),
            AppTextField(
              hintText: '3115607405',
              onTap: () {
                setState(() {
                  updatedWidthdrawalDetails = true;
                });
              },
              borderColor: !updatedWidthdrawalDetails
                  ? AppColors.transparent
                  : AppColors.grey,
              backgroundColor: !updatedWidthdrawalDetails
                  ? AppColors.lightPurple
                  : AppColors.white,
            ),
            const Spacing.mediumHeight(),
            AppDropdown(
              hintText: 'First Bank',
              items: const ["Uba", "Union", "Zenith"],
              onChanged: (String item) {},
            ),
            const Spacing.mediumHeight(),
            AccountInfoContainer(
              title: '11122233344',
              onTap: () {
                setState(() {
                  updatedWidthdrawalDetails = !updatedWidthdrawalDetails;
                });
              },
              borderColor: !updatedWidthdrawalDetails
                  ? AppColors.transparent
                  : AppColors.grey,
              suffixWidget: const Icon(Icons.info_outline),
              color: !updatedWidthdrawalDetails
                  ? AppColors.lightPurple
                  : AppColors.white,
            ),
            const Spacing.mediumHeight(),
            AppButton(title: 'Update details', onTap: () {}),
            const Spacing.mediumHeight(),
            AppButton(
                title: 'Update details',
                color: AppColors.darkRed,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    //?
                    SnackBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      duration: const Duration(milliseconds: 900),
                      dismissDirection: DismissDirection.up,
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height - 150,
                        left: 10.w,
                        right: 10.w,
                      ),
                      content: const AppSnackbar(
                          message: 'Withdrawal account updated!'),
                    ),
                  );
                }),
          ],
        ));
  }
}
