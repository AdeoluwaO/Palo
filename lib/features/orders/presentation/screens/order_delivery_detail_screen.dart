import 'dart:developer';

import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/orders/presentation/widgets/order_button.dart';
import 'package:dispatchapp/features/orders/presentation/widgets/order_screen_bottomsheet.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_show_dialogue.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDeliveryDetailScreen extends StatefulWidget {
  const OrderDeliveryDetailScreen({super.key});

  @override
  State<OrderDeliveryDetailScreen> createState() =>
      _OrderDeliveryDetailScreenState();
}

class _OrderDeliveryDetailScreenState extends State<OrderDeliveryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 8.h,
          ),
          child: Stack(
            children: [
              Container(
                color: Colors.amber,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OrderCustomButton(
                      icon: const Icon(Icons.arrow_back, size: 30),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Tooltip(
                      message: 'Cancel order',
                      decoration: BoxDecoration(
                          color: AppColors.darkRed,
                          borderRadius: BorderRadius.circular(10)),
                      child: OrderCustomButton(
                        icon: const Icon(
                          Icons.more_vert,
                          size: 30,
                        ),
                        onTap: () {
                          AppShowDialogue.showDialogue(
                            context: context,
                            child: AppDialogue(
                              title:
                                  'Are you sure you want to cancel this order?',
                              message:
                                  'Once cancelled, your progress will be lost and you won’t receive any payment.',
                              height: 260.h,
                              actionButtons: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: AppTextStyle.bodyMediumX.copyWith(
                                        fontSize: 14, color: AppColors.black),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.popAndPushNamed(context,
                                        RouteGenerator.orderCancelledScreen);
                                  },
                                  child: Text(
                                    'Cancel order',
                                    style: AppTextStyle.bodyMediumX.copyWith(
                                        fontSize: 14, color: AppColors.darkRed),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: const OrderScreenBottomsheet(),
    );
  }
}
