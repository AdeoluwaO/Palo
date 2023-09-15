import 'package:dispatchapp/shared/constants/images.dart';
import 'package:dispatchapp/shared/widgets/app_image_view.dart';
import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
        titleText: 'Order 996789123456',
        showBackButton: true,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            Stack(
              children: [
                AppImageView(
                  imagePath: AppImages.testImage,
                  width: size.width,
                  height: 215.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        tooltip: 'previous',
                        onPressed: () {},
                        icon: Icon(Icons.chevron_left)),
                    IconButton(
                        tooltip: 'next',
                        onPressed: () {},
                        icon: Icon(Icons.chevron_right))
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
