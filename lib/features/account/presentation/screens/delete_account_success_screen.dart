import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:dispatchapp/shared/widgets/simple_scaffold.dart';
import 'package:flutter/material.dart';

class DeleteAccountSuccessScreen extends StatelessWidget {
  const DeleteAccountSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleScaffoled(
      body: Center(
        child: Text(
          'Your account has been\nsuccessfully deleted!',
          textAlign: TextAlign.center,
          style: AppTextStyle.headerLarge.copyWith(
            fontSize: 24,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
