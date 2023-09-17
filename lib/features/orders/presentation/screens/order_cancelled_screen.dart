import 'package:dispatchapp/features/orders/presentation/widgets/custom_order_staus_scaffold.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class OrderCancelledScreen extends StatelessWidget {
  const OrderCancelledScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOrderScreenScaffold(
      body: Center(
        child: Text(
          'The order has been\ncancelled!',
          textAlign: TextAlign.center,
          style: AppTextStyle.headerLarge.copyWith(
            fontSize: 24,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
