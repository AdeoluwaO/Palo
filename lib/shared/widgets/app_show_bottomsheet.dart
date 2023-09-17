import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class AppShowBottomSheet {
  static Future<void> appshowModalBottomsheet({
    required BuildContext context,
    required Widget child,
  }) async {
    return showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      backgroundColor: AppColors.transparent,
      isScrollControlled: true,
      builder: (context) => child,
    );
  }
}
