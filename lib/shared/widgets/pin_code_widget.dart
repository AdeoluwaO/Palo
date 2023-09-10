import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppPinCodeField extends StatelessWidget {
  const AppPinCodeField({
    super.key,
    required this.onComplete,
    this.onChange,
    this.controller,
    this.obscureText,
    this.obscureCharacter,
  });
  final Function(String pin) onComplete;
  final Function(String pin)? onChange;
  final TextEditingController? controller;
  final bool? obscureText;
  final String? obscureCharacter;
  @override
  Widget build(BuildContext context) {
    return PinCodeFields(
      length: 6,
      onComplete: onComplete,
      controller: controller,
      onChange: onChange,
      obscureCharacter: obscureCharacter ?? "*",
      obscureText: obscureText ?? false,
      activeBorderColor: AppColors.darkGrey,
      borderWidth: 1.0,
      fieldWidth: 20.w,
      responsive: false,
      textStyle: AppTextStyle.robotoFont,
    );
  }
}
