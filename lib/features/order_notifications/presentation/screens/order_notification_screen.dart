import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/order_notifications/presentation/widget/notification_tile.dart';
import 'package:dispatchapp/shared/constants/images.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderNotificationsScreen extends StatelessWidget {
  const OrderNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'Notifications',
      showBackButton: true,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          NotificationTile(
            title: 'You have a new order from Sola.',
            leadingIcon: AppImages.newOrderIcon,
            subTitle: '4 minutes ago',
            onTap: () {

            },
          ),
          const Spacing.smallHeight(),
          NotificationTile(
            title: 'Your wallet has been credited.',
            leadingIcon: AppImages.walletIcon,
            subTitle: '4 minutes ago',
            onTap: () {

            },
          ),
          const Spacing.smallHeight(),
          NotificationTile(
            title: 'Order 1211334455 has been delivered!',
            leadingIcon: AppImages.orderIcon,
            subTitle: '4 minutes ago',
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}