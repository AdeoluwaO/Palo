import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderDeliveryInfoWidget extends StatelessWidget {
  const OrderDeliveryInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'On the way to Printer',
          style: AppTextStyle.bodyMediumX
              .copyWith(fontSize: 14, color: AppColors.primaryColor),
        ),
        const Spacing.mediumHeight(),
        const Text(
          'Location',
          style: AppTextStyle.bodySmall,
        ),
        const Spacing.smallHeight(),
        Text(
          'Solab Suites, Off futa road, Akure',
          style: AppTextStyle.bodyMediumX
              .copyWith(fontSize: 14, color: AppColors.darkGrey),
        ),
        const Spacing.smallHeight(),
        Row(
          children: [
            AppImageView(
              imagePath: AppImages.testProfileImage,
              radius: const BorderRadius.all(Radius.circular(30)),
              height: 52.h,
              width: 50.w,
            ),
            const Spacing.mediumWidth(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Printer',
                  style: AppTextStyle.bodySmall,
                ),
                Text(
                  'Andi Joseph',
                  style: AppTextStyle.bodyMediumX
                      .copyWith(color: AppColors.darkGrey),
                ),
              ],
            ),
            Spacing.width(MediaQuery.sizeOf(context).width * 0.1),
            AppButton(
                title: '',
                color: AppColors.green,
                leading: const Icon(
                  Icons.phone_outlined,
                  color: AppColors.white,
                ),
                onTap: () {
                  final Uri telUri = Uri(
                    scheme: 'tel',
                    path: '09077826377',
                  );

                  launchUrl(telUri);
                }),
          ],
        ),
        const Spacing.smallHeight(),
        Center(
          child: AppButton(
            title: 'Printer’s location reached',
            onTap: () {},
            borderColor: AppColors.primaryColor,
            titleStyle: AppTextStyle.bodyMediumX
                .copyWith(fontSize: 14, color: AppColors.primaryColor),
          ),
        )
      ],
    );
  }
}
