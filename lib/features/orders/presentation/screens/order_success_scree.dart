import 'package:dispatchapp/features/orders/presentation/widgets/custom_order_staus_scaffold.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOrderScreenScaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                Lottie.asset(AppImages.successAnimation),
                const Spacing.smallHeight(),
                Text(
                  'Task successfully completed.\nYour payment will be sent into your\nwallet in minutes.',
                  style: AppTextStyle.bodySmall.copyWith(fontSize: 18),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Lottie.asset(AppImages.confettiAnimation, repeat: false),
          ],
        ),
      ),
    );
  }
}
