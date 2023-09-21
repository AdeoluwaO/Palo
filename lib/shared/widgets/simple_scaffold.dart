import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//? this is a simple scaffold used in the
//? successfullty deleted account, order cancelled
class SimpleScaffoled extends StatelessWidget {
  const SimpleScaffoled({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        toolbarHeight: 90.h,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            tooltip: 'Close',
            icon: const Icon(
              Icons.close,
              color: AppColors.black,
            )),
      ),
      backgroundColor: AppColors.white,
      body: body,
    );
  }
}
