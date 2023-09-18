import 'package:dispatchapp/features/help_and_support/presentation/widget/help_center_tile_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        titleText: 'Help center',
        showBackButton: true,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            const Spacing.mediumHeight(),
            Text(
              'Incase you have questions, queries or problems, you can call us through this phone number',
              style: AppTextStyle.bodySmall.copyWith(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            const Spacing.mediumHeight(),
            HelpCenterTile(
              title: '+2349065890900',
              leading: const Icon(Icons.phone_outlined),
              color: AppColors.white,
              borderColor: AppColors.grey,
              onTap: () {
                final Uri telUri = Uri(
                  scheme: 'tel',
                  path: '2349065890900',
                );
                launchUrl(telUri);
              },
            ),
            const Spacing.mediumHeight(),
            Text(
              'or email us',
              style: AppTextStyle.bodySmall.copyWith(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            const Spacing.mediumHeight(),
            HelpCenterTile(
              title: 'berrystamp@gmail.com',
              leading: const Icon(Icons.mail_outline),
              color: AppColors.white,
              borderColor: AppColors.grey,
              onTap: () {
                final Uri mailUri = Uri(
                  scheme: 'mailto',
                  path: 'berrystamp@gmail.com',
                );
                launchUrl(mailUri);
              },
            ),
          ],
        ));
  }
}
