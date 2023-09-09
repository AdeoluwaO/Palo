import 'package:dispatchapp/core/routers/route_generator.dart';
import 'package:dispatchapp/features/wallet/presentation/widgets/wallet_card.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        showBackButton: true,
        titleText: 'My Wallet',
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            WalletCard(
              balance: '0',
              onTap: () {
                Navigator.pushNamed(
                    context, RouteGenerator.widthdrawFundsScreen);
              },
            ),
            const Spacing.largeHeight(),
            Text(
              'Transactions',
              style: AppTextStyle.bodyMediumX
                  .copyWith(fontSize: 20, color: AppColors.black),
            ),
            const Spacing.mediumHeight(),
            //! add an expanede to price text
            //! check the lenght of the price from api
            //! if it's greater than 6 added an expanded text if not no
            CustomListTile(
              leading: const CircleAvatar(
                foregroundImage: AssetImage(AppImages.testProfileImage),
              ),
              title: 'Payment for Order996789123456',
              subTitle: 'Feb 23, 07:06',
              trailing: Text(
                '+4500',
                style: AppTextStyle.bodyMediumX.copyWith(
                  fontSize: 12,
                  color: AppColors.green,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacing.mediumHeight(),
            CustomListTile(
              leading: const CircleAvatar(
                foregroundImage: AssetImage(AppImages.testProfileImage),
              ),
              title: 'Widthdrawals',
              subTitle: '4 mins ago',
              trailing: Text(
                '+4500',
                style: AppTextStyle.bodyMediumX.copyWith(
                  fontSize: 12,
                  color: AppColors.red,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacing.mediumHeight(),
            CustomListTile(
              leading: const CircleAvatar(
                foregroundImage: AssetImage(AppImages.testProfileImage),
              ),
              title: 'Payment for Order2328tw1w1esd',
              subTitle: 'Mar 23, 07:06',
              trailing: Text(
                '+500',
                style: AppTextStyle.bodyMediumX.copyWith(
                  fontSize: 12,
                  color: AppColors.green,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacing.mediumHeight(),
            CustomListTile(
              leading: const CircleAvatar(
                foregroundImage: AssetImage(AppImages.testProfileImage),
              ),
              title: 'Payment for Order1w2ejd2ejdwd',
              subTitle: 'Jan 31, 07:06',
              trailing: Text(
                '+10000',
                style: AppTextStyle.bodyMediumX.copyWith(
                  fontSize: 12,
                  color: AppColors.red,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacing.mediumHeight(),
            CustomListTile(
              leading: const CircleAvatar(
                foregroundImage: AssetImage(AppImages.testProfileImage),
              ),
              title: 'Payment for Order996789123456',
              subTitle: 'Feb 23, 07:06',
              //? expanded heres with overflow
              //? to collapse anyover flowing
              trailing: Expanded(
                child: Text(
                  '+100000000000000',
                  style: AppTextStyle.bodyMediumX.copyWith(
                    fontSize: 12,
                    color: AppColors.green,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const Spacing.mediumHeight(),
          ],
        ));
  }
}
