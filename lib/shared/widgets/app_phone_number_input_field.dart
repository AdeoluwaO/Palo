import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class AppPhoneNumberInputField extends StatefulWidget {
  const AppPhoneNumberInputField({
    super.key,
    this.hintText,
    required this.onInputChanged,
    this.controller,
    this.borderRadius,
    this.countrySelectorConfig,
    this.prefixIcon,
    this.suffixIcon,
    this.borderColor,
    this.backgroundColor,
    this.bordercolor,
    this.labelColor,
    this.borderWidth,
    this.onFieldSubmitted,
    this.onInputValidated,
    this.onSaved,
    this.onSubmit,
    this.height,
    this.width,
    this.keyboardAction,
    this.autoValidateMode,
  });
  final String? hintText;
  final TextInputAction? keyboardAction;
  final TextEditingController? controller;
  final AutovalidateMode? autoValidateMode;
  final double? height, width;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? bordercolor, backgroundColor, labelColor, borderColor;
  final double? borderRadius;
  final double? borderWidth;
  final void Function(PhoneNumber value) onInputChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function(bool)? onInputValidated;
  final Function(PhoneNumber)? onSaved;
  final void Function()? onSubmit;
  final SelectorConfig? countrySelectorConfig;
  @override
  State<AppPhoneNumberInputField> createState() =>
      _AppPhoneNumberInputFieldState();
}

class _AppPhoneNumberInputFieldState extends State<AppPhoneNumberInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 70.h,
      width: widget.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          border: Border.all(
            color: AppColors.lightPurple,
          )),
      child: InternationalPhoneNumberInput(
        textFieldController: widget.controller,
        keyboardAction: widget.keyboardAction,
        onInputValidated: widget.onInputValidated,
        autoValidateMode: widget.autoValidateMode ?? AutovalidateMode.disabled,
        onSaved: widget.onSaved,
        onSubmit: widget.onSubmit,
        onFieldSubmitted: widget.onFieldSubmitted,
        inputBorder: InputBorder.none,
        selectorConfig: widget.countrySelectorConfig ?? const SelectorConfig(),
        onInputChanged: widget.onInputChanged,
        spaceBetweenSelectorAndTextField: 8,
        textStyle: const TextStyle(
          fontSize: 15.0,
        ),
        inputDecoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          filled: true,
          enabled: false,
          fillColor: widget.backgroundColor ?? AppColors.white,
          hintText: widget.hintText ?? 'Phone number',
          hintStyle: AppTextStyle.bodyMedium,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
