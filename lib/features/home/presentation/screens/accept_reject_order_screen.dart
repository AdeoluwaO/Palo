import 'package:dispatchapp/features/home/presentation/provider/home_provider.dart';
import 'package:dispatchapp/features/home/presentation/widgets/profile_widget.dart';
import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/widgets/app_button.dart';
import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../shared/constants/colors.dart';
import '../../../../shared/constants/images.dart';
import '../widgets/currency.dart';

class AcceptRejectScreen extends StatelessWidget {
  const AcceptRejectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    List<String> images = [
      AppImages.testImage,
      AppImages.testImage,
      AppImages.testImage,
    ];

    return AppScaffold(
      showBackButton: true,
      titleText: 'Order 20231613',
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    Consumer<HomeProvider>(
                      builder: (ctx, homeProvider, child){
                      return Stack(
                        children: [
                          Container(
                            height: 214,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.r),
                            ),
                            child: PageView.builder(
                              controller: pageController,
                              itemCount: images.length,
                              onPageChanged: (index) {
                                homeProvider.setCurrentIndex(index);
                              },
                              itemBuilder: (context, index) {
                                return Image.asset(
                                  images[index],
                                  fit: BoxFit.cover,
                                );
                              },
                            ),
                          ),
                          Positioned(
                            bottom: 20.h,
                            left: 180.w,
                            child: Container(
                              height: 18.h,
                              width: 46.w,
                              decoration: BoxDecoration(
                                color: AppColors.darkRed,
                                borderRadius: BorderRadius.circular(
                                    1000.r
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(images.length, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 3.0),
                                    child: Container(
                                      width: 5.36.w,
                                      height: 5.36.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: homeProvider.currentIndex == index
                                            ? Colors.white
                                            : AppColors.opaqueWhite,
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 95.21.h,
                            left: 10.72.w,
                            right: 10.72.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                 radius: 15,
                                  backgroundColor: AppColors.darkRed,
                                  child: IconButton(
                                    onPressed: () {
                                      if (homeProvider.currentIndex > 0) {
                                        homeProvider
                                            .setCurrentIndex(homeProvider.currentIndex - 1);
                                        pageController.previousPage(
                                          duration: const Duration(milliseconds: 300),
                                          curve: Curves.easeInOut,
                                        );
                                      }
                                    },
                                    icon: const Icon(Icons.arrow_back_ios_rounded, color: AppColors.white, size: 12,),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: AppColors.darkRed,
                                  child: IconButton(
                                    onPressed: () {
                                      if (homeProvider.currentIndex < images.length - 1) {
                                        homeProvider
                                            .setCurrentIndex(homeProvider.currentIndex + 1);
                                        pageController.nextPage(
                                          duration: const Duration(milliseconds: 300),
                                          curve: Curves.easeInOut,
                                        );
                                      }
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios_rounded, color: AppColors.white, size: 12,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                      }
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Spacing.mediumHeight(),
                            Text(
                              'Items(s)',
                              style: AppTextStyle.bodySmall.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacing.smallHeight(),
                            Text(
                              '4 pieces of cups,\n2 shirts,\n4 picture frames',
                              style: AppTextStyle.headerLarge.copyWith(
                                fontSize: 16,
                              ),
                            ),
                            const Spacing.mediumHeight(),
                            Text(
                              'Task Description',
                              style: AppTextStyle.bodySmall.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacing.smallHeight(),
                            Text(
                              'Go to printer,\nReceive goods, \nDeliver to customer',
                              style: AppTextStyle.headerLarge.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacing.mediumHeight(),
                    const Row(
                      children: [
                        ProfileWidget(
                            profileTitle: 'Customer name',
                            personName: 'Mr Customer',
                            profileImage: AppImages.mrCustomerImage),
                        Spacing.mediumWidth(),
                        ProfileWidget(
                            profileTitle: 'Printer name',
                            personName: 'Mr Printer',
                            profileImage: AppImages.mrPrinterImage),
                      ],
                    ),
                    const Spacing.mediumHeight(),
                    Row(
                      children: [
                        timeText(title: 'Estimated Time', message: '1 hour'),
                        Spacing.width(100.w),
                        paymentText(
                            title: 'Payment Amount',
                            message: '${currency(context).currencySymbol}6000')
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 148.h,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.lightPurple),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.12), // Shadow color
                    spreadRadius: 0, // Spread radius
                    blurRadius: 8, // Blur radius
                    offset: const Offset(0, 0), // Offset for shadow
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Column(
                  children: [
                    AppButton(
                      width: 294.w,
                      color: AppColors.darkRed,
                      title: 'Accept order and get started',
                      titleStyle: AppTextStyle.headerLarge
                          .copyWith(fontSize: 16, color: AppColors.white),
                      onTap: () {},
                    ),
                    const Spacing.smallHeight(),
                    const Spacing.smallHeight(),
                    Text(
                      'Reject order',
                      style: AppTextStyle.bodyMedium
                          .copyWith(color: AppColors.darkRed),
                    ),
                    // Add more widgets for your modal content
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget timeText({required String title, required String message}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.bodySmall.copyWith(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          message,
          style: AppTextStyle.headerLarge
              .copyWith(fontSize: 16, color: AppColors.black),
        ),
      ],
    );
  }

  Widget paymentText({required String title, required String message}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.bodySmall.copyWith(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          message,
          style: AppTextStyle.headerLarge
              .copyWith(fontSize: 16, color: AppColors.black),
        ),
      ],
    );
  }
}
