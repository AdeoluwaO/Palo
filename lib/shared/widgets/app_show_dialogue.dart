import 'package:flutter/material.dart';

class AppShowDialogue {
  static Future<void> showDialogue(
      {required BuildContext context, required Widget child}) async {
    return showDialog(context: context, builder: (context) => child);
  }
}
