import 'package:dispatchapp/features/orders/presentation/widgets/order_deliver_info_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'dart:developer';

class DeliveryTrackerWidget extends StatefulWidget {
  const DeliveryTrackerWidget({
    super.key,
    required this.activeStep,
    required this.totalStepsCount,
    required this.activeStepsIcon,
    required this.inactiveStepsIcon,
    required this.stepMessage,
    this.showHorizontalSteper = false,
    this.activeStepColor,
    this.inactiveStepColor,
    this.activeLineHeight,
    this.activeLineWidth,
    this.inactiveLineHeight,
    this.inactiveLineWidth,
    this.onFinished,
  });
  final int activeStep;
  final int totalStepsCount;
  final bool showHorizontalSteper;
  final Widget activeStepsIcon, inactiveStepsIcon, stepMessage;
  final Color? activeStepColor, inactiveStepColor;
  final double? activeLineHeight,
      inactiveLineHeight,
      activeLineWidth,
      inactiveLineWidth;
  final Function()? onFinished;

  @override
  State<DeliveryTrackerWidget> createState() => _DeliveryTrackerWidgetState();
}

class _DeliveryTrackerWidgetState extends State<DeliveryTrackerWidget> {
  int _activeStep = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() => _activeStep = widget.activeStep);
    onFinished();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:
          widget.showHorizontalSteper ? Axis.horizontal : Axis.vertical,
      child: widget.showHorizontalSteper
          ? _buildHorizontalStepper()
          : _buildVerticalStepper(),
    );
  }

  Widget _buildVerticalStepper() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          //? subtract one to leave the last one
          //? at the end of the column
          widget.totalStepsCount,
          (index) {
            return Row(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                      height: getHeightLineHeight(_activeStep, index),
                      width: widget.activeLineWidth ?? 6.w,
                      color: index < _activeStep &&
                              _activeStep == widget.activeStep
                          ? widget.activeStepColor ?? AppColors.primaryColor
                          : widget.inactiveStepColor ?? AppColors.lightPurple,
                    ),
                    index < _activeStep && _activeStep == widget.activeStep
                        ? widget.activeStepsIcon
                        : widget.inactiveStepsIcon,
                  ],
                ),
                const Spacing.mediumWidth(),
                if (_activeStep == index) widget.stepMessage,
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildHorizontalStepper() {
    return Row(children: [
      ...List.generate(widget.totalStepsCount - 1, (index) {
        return Row(
          children: [
            index < _activeStep && _activeStep == widget.activeStep
                ? widget.activeStepsIcon
                : widget.inactiveStepsIcon,
            Container(
              height: widget.inactiveLineHeight ?? 6.h,
              width: MediaQuery.sizeOf(context).width / widget.totalStepsCount,
              color: index < _activeStep && _activeStep == widget.activeStep
                  ? widget.activeStepColor ?? AppColors.primaryColor
                  : widget.inactiveStepColor ?? AppColors.lightPurple,
            ),
          ],
        );
      }),
      _activeStep == widget.totalStepsCount
          ? widget.activeStepsIcon
          : widget.inactiveStepsIcon,
    ]);
  }

  double getHeightLineHeight(int activeStep, int index) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    if (activeStep == index) {
      return widget.activeLineWidth ??
          (deviceWidth * 0.7) / widget.totalStepsCount;
    } else if (index + 1 == widget.totalStepsCount) {
      return 0;
    } else {
      return widget.inactiveLineWidth ?? 30.w;
    }
  }

  double getLineWidth(int activeStep, int index) {
    if (activeStep == index) {
      return widget.activeLineHeight ?? 300.h;
    } else if (index + 1 == widget.totalStepsCount) {
      return 0;
    } else {
      return widget.inactiveLineHeight ?? 60.h;
    }
  }

  onFinished() {
    if (_activeStep == widget.totalStepsCount) {
      log('LOGGING DATA');
      widget.onFinished;
    }
  }
}
