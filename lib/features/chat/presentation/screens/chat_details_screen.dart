import 'package:dispatchapp/features/chat/presentation/widgets/order_info_widget.dart';
import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:nb_utils/nb_utils.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key});
  //? build a custom scaffold for this screen
  //? it will have a column in side the column the
  //? appbar listview (chat scrolling)
  //? lastly whee the text input will be

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.h),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.chevron_left_outlined,
                    size: 30,
                  ),
                ),
                const CircleAvatar(
                  radius: 20,
                  foregroundImage: AssetImage(AppImages.testProfileImage),
                ),
                const Spacing.smallWidth(),
                Text(
                  'Tosin Promise',
                  style: AppTextStyle.bodyMedium.copyWith(
                      color: AppColors.black, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Expanded(
                child: ListView(
              children: [
                OrderInfoWidget(
                  image: AppImages.testProfileImage,
                  title: 'Order 996789123456',
                  subtitle: 'In Transit',
                  onTap: () {},
                  statusColor: AppColors.yellow,
                )
              ],
            )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                children: [
                  SizedBox(
                    height: 90.h,
                    width: MediaQuery.sizeOf(context).width * 0.75,
                    child: AppTextField(
                      hintText: 'Aa',
                      onChange: (String chat) {},
                      borderColor: AppColors.lightPurple,
                      borderRadius: 30,
                    ),
                  ),
                  SizedBox(
                    height: 90.h,
                    width: 80.w,
                    child: IconButton(
                      tooltip: 'Send',
                      onPressed: () {},
                      icon: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsetsDirectional.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: AppColors.primaryColor,
                        ),
                        child: const Icon(Icons.send),
                      ),
                      color: AppColors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
