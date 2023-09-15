import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectAccountTypeScreen extends StatefulWidget {
  const SelectAccountTypeScreen({super.key});

  @override
  State<SelectAccountTypeScreen> createState() =>
      _SelectAccountTypeScreenState();
}

class _SelectAccountTypeScreenState extends State<SelectAccountTypeScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'Select your account type',
        body: ListView(
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            CustomListTile(
              leadingIcon: AppImages.profileIcon,
              title: 'Individual',
              subTitle: 'You own a vehicle that you ride',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteGenerator.loadingScreen,
                  arguments: 'Creating your account',
                );
              },
            ),
            const Spacing.mediumHeight(),
            CustomListTile(
              leadingIcon: AppImages.businessIcon,
              title: 'Business',
              subTitle: 'You have more than one vehicles with drivers',
              onTap: () {
                Navigator.pushNamed(context, RouteGenerator.myAccountScreen);
              },
            ),
          ],
        ));
  }
}
