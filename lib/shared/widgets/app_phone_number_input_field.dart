import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
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
  });
  final String? hintText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? bordercolor, backgroundColor, labelColor, borderColor;
  final double? borderRadius;
  final double? borderWidth;
  final void Function(PhoneNumber value) onInputChanged;
  final SelectorConfig? countrySelectorConfig;
  @override
  State<AppPhoneNumberInputField> createState() =>
      _AppPhoneNumberInputFieldState();
}

class _AppPhoneNumberInputFieldState extends State<AppPhoneNumberInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          border: Border.all(
            color: AppColors.lightPurple,
          )),
      child: InternationalPhoneNumberInput(
        textFieldController: widget.controller,
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
        ),
      ),
    );
  }
}
