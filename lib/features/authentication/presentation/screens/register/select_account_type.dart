import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectAccountTypeScreen extends StatelessWidget {
  const SelectAccountTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: ListView(
      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
      children: [
        const Spacing.mediumHeight(),
        CustomListTile(
          leadingIcon: AppImages.profileIcon,
          title: 'Individual',
          subTitle: 'You own a vehicle that you ride',
          onTap: () {
            Navigator.pushNamed(context, RouteGenerator.myAccountScreen);
          },
        ),
        const Spacing.mediumHeight(),
        CustomListTile(
          leadingIcon: AppImages.profileIcon,
          title: 'Individual',
          subTitle: 'You own a vehicle that you ride',
          onTap: () {
            Navigator.pushNamed(context, RouteGenerator.myAccountScreen);
          },
        ),
      ],
    ));
  }
}
