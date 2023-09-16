import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/home/presentation/widgets/custom_stats_widget.dart';
import 'package:dispatchapp/features/home/presentation/widgets/nav_bar.dart';
import 'package:dispatchapp/features/orders/presentation/widgets/recent_orders_info_widget.dart';
import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_image_view.dart';
import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
                "Home",
                style: AppTextStyle.headerLarge.copyWith(
                    fontSize: 24
                )
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, RouteGenerator.orderNotificationsScreen);
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "My Stats",
                      style: AppTextStyle.headerLarge.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      )),
                  Text(
                      "View report",
                      style: AppTextStyle.headerLarge.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        color: AppColors.grey
                      )),
                ],
              ),
              const Spacing.smallHeight(),
              const CustomStatsWidget(
                  totalText: 'Total completed orders',
                  totalValue: "300",
                  percent: "10%",
                  percentIcon: AppImages.arrowUpIcon,
                  percentColor: AppColors.green,
                  percentBackgroundColor: AppColors.lightGreen
              ),
              const Spacing.smallHeight(),
              const CustomStatsWidget(
                  totalText: 'Total money earned',
                  totalValue: "300k",
                  percent: "5%",
                  percentIcon: AppImages.arrowDownIcon,
                  percentColor: AppColors.red,
                  percentBackgroundColor: AppColors.lightRed
              ),
              const Spacing.smallHeight(),
              const CustomStatsWidget(
                  totalText: 'Total completed orders',
                  totalValue: "300k",
                  percent: "5%",
                  percentIcon: AppImages.arrowDownIcon,
                  percentColor: AppColors.red,
                  percentBackgroundColor: AppColors.lightRed
              ),
              const Spacing.mediumHeight(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Recent Orders",
                      style: AppTextStyle.headerLarge.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      )),
                  Text(
                      "See All",
                      style: AppTextStyle.headerLarge.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey
                      )),
                ],
              ),
              const Spacing.mediumHeight(),
              RecentOrderInfoWidget(
                orderImage: '',
                orderId: 'Order 996789123456',
                orderStatus: 'Cancelled',
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
                orderStatus: 'Completed',
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
                orderStatus: 'Cancelled',
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
                orderStatus: 'Completed',
                orderStatusTextColor: AppColors.green,
                orderStatusBackgroundColor: AppColors.green200,
                onTap: () {
                  Navigator.pushNamed(context, RouteGenerator.orderDetailScreen);
                },
              ),
            ],

          ),
        ),
      ),
    );
  }
}
