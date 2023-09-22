import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/home/presentation/widgets/currency.dart';
import 'package:dispatchapp/features/home/presentation/widgets/custom_stats_widget.dart';
import 'package:dispatchapp/features/home/presentation/widgets/customer_rating_widget.dart';
import 'package:dispatchapp/features/home/presentation/widgets/home_notification_widget.dart';
import 'package:dispatchapp/features/home/presentation/widgets/recent_orders_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_image_view.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Home",
                style: AppTextStyle.headerLarge.copyWith(fontSize: 24)),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                  context, RouteGenerator.orderNotificationsScreen);
            },
            child: AppImageView(
              svgPath: AppImages.homeNotifyIcon,
              width: 24,
              height: 24,
            ),
          ),
          const Spacing.mediumWidth(),
        ],
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w),
          child: Column(
            children: [
              HomeNotificationWidget(
                notifyImage: AppImages.homeNotifyImage,
                title: 'You have an order!',
                subTitle: 'Sola is requesting for your delivery services.',
                onTap: () {
                  Navigator.pushNamed(
                      context, RouteGenerator.acceptRejectScreen);
                },
              ),
              const Spacing.mediumHeight(),
              const Spacing.mediumHeight(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Stats",
                      style: AppTextStyle.headerLarge
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w500)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, RouteGenerator.myStatsScreen);
                    },
                    child: Text("View report",
                        style: AppTextStyle.headerLarge.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey)),
                  ),
                ],
              ),
              const Spacing.smallHeight(),
              CustomStatsWidget(
                totalText: 'Total completed orders',
                totalValue: "300",
                percent: "10%",
                percentIcon: AppImages.arrowUpIcon,
                percentColor: AppColors.green,
                percentBackgroundColor: AppColors.lightGreen,
                onTap: () {
                  Navigator.pushNamed(context, RouteGenerator.myStatsScreen);
                },
              ),
              const Spacing.smallHeight(),
              CustomStatsWidget(
                totalText: 'Total money earned',
                totalValue: '${currency(context).currencySymbol}300k',
                percent: "5%",
                percentIcon: AppImages.arrowDownIcon,
                percentColor: AppColors.red,
                percentBackgroundColor: AppColors.lightRed,
                onTap: () {
                  Navigator.pushNamed(context, RouteGenerator.myStatsScreen);
                },
              ),
              const Spacing.smallHeight(),
              CustomerRatingWidget(
                  totalText: 'Customer ratings',
                  totalValue: '4.0',
                  onTap: () {},
                  customerNumber: '200',
                  numberBackgroundColor: AppColors.lightGreen),
              const Spacing.mediumHeight(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Orders",
                      style: AppTextStyle.headerLarge
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w500)),
                  Text("See All",
                      style: AppTextStyle.headerLarge.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey)),
                ],
              ),
              const Spacing.mediumHeight(),
              RecentOrdersWidget(
                orderImage: AppImages.recentOrderImage,
                orderId: 'Order 996789123456',
                orderStatus: 'Cancelled',
                orderStatusTextColor: AppColors.red600,
                orderStatusBackgroundColor: AppColors.lightRed,
                onTap: () {
                  Navigator.pushNamed(
                      context, RouteGenerator.noRecentOrderScreen);
                },
              ),
              const Spacing.mediumHeight(),
              RecentOrdersWidget(
                orderImage: AppImages.recentOrderImage,
                orderId: 'Order 996789123456',
                orderStatus: 'Completed',
                orderStatusTextColor: AppColors.green,
                orderStatusBackgroundColor: AppColors.green200,
                onTap: () {
                  Navigator.pushNamed(
                      context, RouteGenerator.orderDetailsScreen);
                },
              ),
              const Spacing.mediumHeight(),
              RecentOrdersWidget(
                orderImage: AppImages.recentOrderImage,
                orderId: 'Order 996789123456',
                orderStatus: 'Cancelled',
                orderStatusTextColor: AppColors.red600,
                orderStatusBackgroundColor: AppColors.lightRed,
                onTap: () {
                  Navigator.pushNamed(
                      context, RouteGenerator.orderDetailsScreen);
                },
              ),
              const Spacing.mediumHeight(),
              RecentOrdersWidget(
                orderImage: AppImages.recentOrderImage,
                orderId: 'Order 996789123456',
                orderStatus: 'Completed',
                orderStatusTextColor: AppColors.green,
                orderStatusBackgroundColor: AppColors.green200,
                onTap: () {
                  Navigator.pushNamed(
                      context, RouteGenerator.orderDetailsScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
