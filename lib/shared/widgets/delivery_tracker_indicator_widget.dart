import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliveryTrackerWidget extends StatefulWidget {
  const DeliveryTrackerWidget({super.key});
  @override
  State<DeliveryTrackerWidget> createState() => _DeliveryTrackerWidgetState();
}

class _DeliveryTrackerWidgetState extends State<DeliveryTrackerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 6.h,
            width: MediaQuery.sizeOf(context).width * 0.8,
            color: AppColors.lightPurple,
          ),
          Container(
            height: 6.h,
            //? initially [0] increase by 0.4 or any digit
            //? as delivery step gets completed
            //? maximum width must be [0.8 (80%)] multiplied by the device's width
            width: MediaQuery.sizeOf(context).width * 0.2,
            color: AppColors.primaryColor,
          ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: SvgPicture.asset(AppImages.checkedIcon),
          // ),
          // Row(
          //   children: [
          //     SvgPicture.asset(AppImages.checkedIcon),
          //     //! animate width simultaneously with deliveryIcon offset
          //     Container(
          //       height: 6.h,
          //       //? initially [0] increase by 0.4 or any digit
          //       //? as delivery step gets completed
          //       //? maximum width must be [0.8 (80%)] multiplied by the device's width
          //       width: MediaQuery.sizeOf(context).width * 0.2,
          //       color: AppColors.primaryColor,
          //     ),
          //   ],
          // ),
          PositionedDirectional(
            end: 10.w,
            child: Transform.translate(
              offset: const Offset(0, 5),
              child: Transform.scale(
                scale: 1.6,
                child: SvgPicture.asset(AppImages.inactiveIcon),
              ),
            ),
          ),
          // SvgPicture.asset(AppImages.inactiveIcon),
          // SvgPicture.asset(AppImages.inactiveIcon),
          // SvgPicture.asset(AppImages.inactiveIcon),
          //! animate dx offset
          Transform.translate(
            //? leave -5 position's icon to center
            //? maximum offset must be [320]
            offset: Offset(80.w, 0),
            child: Transform.scale(
                scale: 1.8,
                child: SvgPicture.asset(
                  AppImages.activeIcon,
                )),
          )
        ],
      ),
    );
  }
}
