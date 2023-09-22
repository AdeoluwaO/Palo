import 'package:dispatchapp/features/orders/presentation/widgets/order_deliver_info_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliveryTrackerWidget extends StatefulWidget {
  const DeliveryTrackerWidget(
      {super.key,
      required this.activeStep,
      this.totlStepsCount,
      required this.activeStepsIcon,
      required this.inactiveStepsIcon,
      required this.stepMessage,
      this.activeStepColor,
      this.inactiveStepColor,
      this.activeLineHeight,
      this.activeLineWidth,
      this.inactiveLineHeight,
      this.inactiveLineWidth});
  final int activeStep;
  final int? totlStepsCount;
  final Widget activeStepsIcon, inactiveStepsIcon, stepMessage;
  final Color? activeStepColor, inactiveStepColor;
  final double? activeLineHeight,
      inactiveLineHeight,
      activeLineWidth,
      inactiveLineWidth;

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
          widget.totlStepsCount ?? 4,
          (index) {
            return Row(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                      height: activeStep == index
                          ? widget.activeLineHeight ?? 300.h
                          : widget.inactiveLineHeight ?? 60.h,
                      width: widget.activeLineWidth ?? 6.w,
                      color: activeStep == index
                          ? widget.activeStepColor ?? AppColors.primaryColor
                          : widget.inactiveStepColor ?? AppColors.lightPurple,
                    ),
                    activeStep == index
                        ? widget.activeStepsIcon
                        : widget.inactiveStepsIcon
                  ],
                ),
                const Spacing.mediumWidth(),
                if (activeStep == index) widget.stepMessage,
              ],
            );
          },
        ),
      ),
    );
  }
}
