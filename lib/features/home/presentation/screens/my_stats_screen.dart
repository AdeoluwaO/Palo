import 'package:dispatchapp/features/home/presentation/widgets/currency.dart';
import 'package:dispatchapp/features/home/presentation/widgets/customer_stats_rating_widget.dart';
import 'package:dispatchapp/features/home/presentation/widgets/stats_info_widget.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/constants/images.dart';
import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyStatsScreen extends StatelessWidget {
  const MyStatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      showBackButton: true,
      titleText: 'My Stats',
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
        children: [
          const Spacing.mediumHeight(),
          const StatsInfoWidget(
              totalText: 'Total completed orders',
              totalValue: '300',
              percent: '10%',
              chartImage: AppImages.greenChart,
              percentIcon: AppImages.arrowUpIcon,
              percentColor: AppColors.darkGreen,
          ),
          const Spacing.mediumHeight(),
          StatsInfoWidget(
            totalText: 'Total money earned',
            totalValue: '${currency(context).currencySymbol}300k',
            percent: '5%',
            chartImage: AppImages.redChart,
            percentIcon: AppImages.arrowDownIcon,
            percentColor: AppColors.darkRed,
          ),
          const Spacing.mediumHeight(),
          const CustomerStatsRatingWidget(
            customerNumber: '200',
            totalText: 'Customer ratings',
            totalValue: '4.0',
            numberBackgroundColor: AppColors.lightGreen,
          )
        ],
      ),
    );
  }
}