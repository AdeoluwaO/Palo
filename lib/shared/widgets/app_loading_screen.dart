import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/app_spacing.dart';
import 'package:flutter/material.dart';

class AppLoadingScreen extends StatelessWidget {
  const AppLoadingScreen({
    super.key,
    this.message,
  });
  final String? message;

  @override
  Widget build(BuildContext context) {
    final OverlayPortalController _overlayController =
        OverlayPortalController()..show();
    return OverlayPortal(
      controller: _overlayController,
      overlayChildBuilder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(
              color: AppColors.darkRed,
            ),
            const Spacing.mediumHeight(),
            Text(
              message ?? 'Loading...',
              style: AppTextStyle.bodySmall
                  .copyWith(fontSize: 14, color: AppColors.grey50),
              textAlign: TextAlign.center,
            )
          ],
        );
      },
    );
    // return Scaffold(
    //   backgroundColor: AppColors.white,
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         const CircularProgressIndicator(
    //           color: AppColors.primaryColor,
    //         ),
    //         const Spacing.mediumHeight(),
    //         Text(
    //           message,
    //           style: AppTextStyle.bodySmall
    //               .copyWith(fontSize: 14, color: AppColors.black),
    //           textAlign: TextAlign.center,
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
