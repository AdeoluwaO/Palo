import 'package:dispatchapp/features/orders/presentation/widgets/order_button.dart';
import 'package:dispatchapp/features/orders/presentation/widgets/order_screen_bottomsheet.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _bottomSheet();
    });
  }

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
                    OrderCustomButton(
                      icon: const Icon(
                        Icons.more_vert,
                        size: 30,
                      ),
                      onTap: () {
                        _bottomSheet();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _bottomSheet() {
    return showModalBottomSheet(
      backgroundColor: AppColors.transparent,
      context: context,
      builder: (context) {
        return OrderScreenBottomsheet();
      },
    );
  }
}
