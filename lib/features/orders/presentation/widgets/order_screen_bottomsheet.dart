import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/chat/presentation/widgets/order_info_widget.dart';
import 'package:dispatchapp/features/orders/presentation/widgets/recent_orders_info_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class OrderScreenBottomsheet extends StatelessWidget {
  const OrderScreenBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          )),
      child: Column(
        children: [
          Container(
            width: 50.w,
            height: 8.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.grey,
            ),
          ),
          const Spacing.bigHeight(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.purple200,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.purple100,
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('Image'),
                                const Spacing.mediumWidth(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'orderId',
                                      style: AppTextStyle.bodyMediumX.copyWith(
                                          fontSize: 14, color: AppColors.black),
                                    ),
                                    const Spacing.smallHeight(),
                                    Container(
                                      height: 30.h,
                                      width: 90.w,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 6.h),
                                      decoration: BoxDecoration(
                                        color: AppColors.lightRed,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        'orderStatus',
                                        style: AppTextStyle.bodySmall.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.darkRed,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, RouteGenerator.orderSuccessScreen);
                              },
                              tooltip: 'info',
                              icon: const Icon(Icons.info_outline_rounded),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('Image'),
                                const Spacing.mediumWidth(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Car 001',
                                      style: AppTextStyle.bodySmall,
                                    ),
                                    const Spacing.smallHeight(),
                                    Text(
                                      'Promise Tosin',
                                      style: AppTextStyle.bodyMediumX.copyWith(
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                final Uri telUri = Uri(
                                  scheme: 'tel',
                                  path: '09077826377',
                                );

                                launchUrl(telUri);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                height: 50.h,
                                width: 50.w,
                                child: const Icon(
                                  Icons.phone_outlined,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
