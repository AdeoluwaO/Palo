import 'package:dispatchapp/features/authentication/presentation/widgets/info_container_auth.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectBankBottomsheetWidget extends StatelessWidget {
  const SelectBankBottomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        maxChildSize: 0.6,
        builder: (context, scrollController) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            height: 400.h,
            decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: Column(
              children: [
                Container(
                  height: 10.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: AppColors.grey50,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView(
                    controller: scrollController,
                  ),
                ),
                const Spacing.mediumHeight(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //? this takes up space to move the text to the center
                    Spacing.width(MediaQuery.sizeOf(context).width * 0.15),
                    const Text(
                      'Select Bank',
                      style: AppTextStyle.redHatMedium,
                    ),
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.cancel_rounded,
                          color: AppColors.grey,
                        ))
                  ],
                ),
                Expanded(
                    child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const Spacing.mediumHeight(),
                    InfoContainerAuth(
                      message: 'Gt bank',
                      onTap: () {},
                    ),
                    const Spacing.mediumHeight(),
                    InfoContainerAuth(
                      message: 'UBA ',
                      onTap: () {},
                    ),
                    const Spacing.mediumHeight(),
                    InfoContainerAuth(
                      message: 'Zenith',
                      onTap: () {},
                    ),
                    const Spacing.mediumHeight(),
                    InfoContainerAuth(
                      leadingIcon: const Icon(Icons.two_wheeler_rounded),
                      message: 'Car',
                      onTap: () {},
                    ),
                  ],
                ))
              ],
            ),
          );
        });
  }
}
