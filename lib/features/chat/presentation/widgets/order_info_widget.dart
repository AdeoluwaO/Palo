import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderInfoWidget extends StatelessWidget {
  const OrderInfoWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onTap,
      required this.statusColor});
  final String image, title, subtitle;
  final Function()? onTap;
  final Color statusColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lightPurple,
        ),
      ),
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          radius: 30,
          foregroundImage: AssetImage(image),
        ),
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 30.h,
                width: 90.w,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  subtitle,
                  style: AppTextStyle.bodySmall
                      .copyWith(color: AppColors.darkYellow, fontSize: 12),
                )),
          ],
        ),
      ),
    );
  }
}
