import 'package:dispatchapp/features/orders/presentation/widgets/order_deliver_info_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliveryTrackerWidget extends StatefulWidget {
  const DeliveryTrackerWidget({super.key});
  @override
  State<DeliveryTrackerWidget> createState() => _DeliveryTrackerWidgetState();
}

class _DeliveryTrackerWidgetState extends State<DeliveryTrackerWidget> {
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          4,
          (index) {
            return Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: 80.h,
                  width: 6.w,
                  color: activeStep == index
                      ? AppColors.primaryColor
                      : AppColors.lightPurple,
                ),
                Transform.scale(
                  scale: 1,
                  child: SvgPicture.asset(activeStep == index
                      ? AppImages.checkedIcon
                      : AppImages.inactiveIcon),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
