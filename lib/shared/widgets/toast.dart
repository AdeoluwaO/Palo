import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'app_snackbar.dart';

showToast({required String message, bool isError = false}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: isError ? AppColors.darkRed : Colors.blue,
    textColor: Colors.white,
    // fontSize: 16.0,
  );
}

showAppSnackbar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      duration: const Duration(milliseconds: 900),
      dismissDirection: DismissDirection.up,
      behavior: SnackBarBehavior.floating,    
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height - 190,
        left: 10.w,
        right: 10.w,
        // top: 0
      ),
      content: AppSnackbar(message: message),
    ),
  );
}
