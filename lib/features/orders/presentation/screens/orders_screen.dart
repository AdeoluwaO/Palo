import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/orders/presentation/widgets/current_order_info_widget.dart';
import 'package:dispatchapp/features/orders/presentation/widgets/recent_orders_info_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleText: 'Orders',
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          const CurrentOrderInfoWidget(),
          const Spacing.bigHeight(),
          Text(
            'Recent Orders',
            style: AppTextStyle.bodyMediumX
                .copyWith(fontSize: 20, color: AppColors.black),
          ),
          const Spacing.bigHeight(),
          const Text(
            'Yesterday',
            style: AppTextStyle.bodySmall,
          ),
          const Spacing.mediumHeight(),
          RecentOrderInfoWidget(
            orderImage: '',
            orderId: 'Order 996789123456',
            orderStatus: 'In Transit',
            orderStatusTextColor: AppColors.red600,
            orderStatusBackgroundColor: AppColors.lightRedd,
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.noRecentOrderScreen);
            },
          ),
          const Spacing.mediumHeight(),
          RecentOrderInfoWidget(
            orderImage: '',
            orderId: 'Order 996789123456',
            orderStatus: 'In Transit',
            orderStatusTextColor: AppColors.green,
            orderStatusBackgroundColor: AppColors.green200,
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.orderDetailScreen);
            },
          ),
          const Spacing.mediumHeight(),
          RecentOrderInfoWidget(
            orderImage: '',
            orderId: 'Order 996789123456',
            orderStatus: 'In Transit',
            orderStatusTextColor: AppColors.red600,
            orderStatusBackgroundColor: AppColors.lightRedd,
            onTap: () {},
          ),
          const Spacing.mediumHeight(),
          RecentOrderInfoWidget(
            orderImage: '',
            orderId: 'Order 996789123456',
            orderStatus: 'In Transit',
            orderStatusTextColor: AppColors.green,
            orderStatusBackgroundColor: AppColors.green200,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
