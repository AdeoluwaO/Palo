import 'dart:developer';

import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/orders/presentation/widgets/order_deliver_info_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OrderScreenBottomsheet extends StatefulWidget {
  const OrderScreenBottomsheet({super.key});

  @override
  State<OrderScreenBottomsheet> createState() => _OrderScreenBottomsheetState();
}

class _OrderScreenBottomsheetState extends State<OrderScreenBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        minChildSize: 0.17,
        maxChildSize: 0.6,
        expand: false,
        builder: (context, _) {
          return Container(
            height: 160.h,
            padding: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 0),
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
                  //? this is needed to use the controller provided
                  //? by the draggablesheet to make the bottomsheet scroll
                  child: ListView(
                    controller: _,
                  ),
                ),
                const Spacing.bigHeight(),
                Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 16.h),
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
                                  const Text(
                                    'orderId',
                                    style: AppTextStyle.bodySmall,
                                  ),
                                  const Spacing.smallHeight(),
                                  Text(
                                    '996789123456',
                                    style: AppTextStyle.bodyMediumX.copyWith(
                                        fontSize: 14, color: AppColors.black),
                                  ),
                                ],
                              ),
                              //? just for testing
                              IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context,
                                      RouteGenerator.orderSuccessScreen);
                                },
                                tooltip: 'info',
                                icon: const Icon(Icons.info_outline_rounded),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacing.mediumHeight(),
                      //? pass api delivery info to this widget
                      DeliveryTrackerWidget(
                        activeStep: 1,
                        totalStepsCount: 4,
                        showHorizontalSteper: false,
                        activeStepsIcon: Transform.scale(
                          scale: 1,
                          child: SvgPicture.asset(AppImages.checkedIcon),
                        ),
                        inactiveStepsIcon: Transform.scale(
                          scale: 1,
                          child: SvgPicture.asset(AppImages.inactiveIcon),
                        ),
                        stepMessage: const OrderDeliveryInfoWidget(),
                        onFinished: () {
                          Navigator.pushNamed(
                              context, RouteGenerator.orderSuccessScreen);
                        },
                      ),
                      // const OrderDeliveryInfoWidget(),
                      const Spacing.mediumHeight(),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  _navigateToSuccessPage() {}
}
