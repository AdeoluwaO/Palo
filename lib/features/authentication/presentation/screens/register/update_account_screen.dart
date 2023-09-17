import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/orders/presentation/widgets/custom_order_staus_scaffold.dart';
import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/images.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:dispatchapp/shared/widgets/simple_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UpdateAccountScreen extends StatelessWidget {
  const UpdateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOrderScreenScaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          Text(
            'Update your account',
            style: AppTextStyle.headerLarge.copyWith(fontSize: 24),
          ),
          const Spacing.smallHeight(),
          Text(
            'Update your account to access all features of the app and improve your experience.',
            style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
            textAlign: TextAlign.justify,
          ),
          const Spacing.largeHeight(),
          SimpleListTile(
            trailingText: 'Upload profile photo',
            leading: SvgPicture.asset(AppImages.imageIcon),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.aboutScreen);
            },
          ),
          const Spacing.largeHeight(),
          SimpleListTile(
            trailingText: 'Add email',
            leading: SvgPicture.asset(AppImages.mailIcon),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.aboutScreen);
            },
          ),
          const Spacing.largeHeight(),
          SimpleListTile(
            trailingText: 'Add withdrawal account',
            leading: SvgPicture.asset(AppImages.availableIcon),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.aboutScreen);
            },
          ),
          const Spacing.largeHeight(),
          SimpleListTile(
            trailingText: 'Add vehicle',
            leading: SvgPicture.asset(AppImages.transportationIcon),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.aboutScreen);
            },
          ),
        ],
      ),
    );
  }
}
