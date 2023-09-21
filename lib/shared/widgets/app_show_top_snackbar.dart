import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AppShowTopSnackbar {
  static Future<void> appshowTopSnackBar(
      {required BuildContext context, required Widget child}) async {
    return showTopSnackBar(
      context,
      child,
    );
  }
}
