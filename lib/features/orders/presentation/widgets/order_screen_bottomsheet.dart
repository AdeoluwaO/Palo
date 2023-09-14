import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/orders/presentation/widgets/order_deliver_info_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderScreenBottomsheet extends StatelessWidget {
  const OrderScreenBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    color: AppColors.purple200,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.purple100),
                  ),
                  child: Row(
                    children: [
                      AppImageView(
                        imagePath: AppImages.orderImage,
                        height: 60.h,
                        width: 60.w,
                        // color: AppColors.primaryColor,
                        radius: BorderRadius.circular(0),
                      ),
                      const Spacing.mediumWidth(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'orderId',
                            style: AppTextStyle.bodySmall,
                          ),
                          const Spacing.smallHeight(),
                          Text(
                            '996789123456',
                            style: AppTextStyle.bodyMediumX
                                .copyWith(fontSize: 14, color: AppColors.black),
                          ),
                        ],
                      ),
                      //? just for testing
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
                const Spacing.mediumHeight(),
                //? pass api delivery info to this widget
                Transform.rotate(
                    angle: 460, child: const DeliveryTrackerWidget()),
                const OrderDeliveryInfoWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
