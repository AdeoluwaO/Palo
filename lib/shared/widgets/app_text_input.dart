import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatefulWidget {
  final double? width;
  final double? labelSize;
  final String? hintText;
  final TextEditingController? controller;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool? obscureText;
  final bool? enabled;
  final FormFieldValidator<String>? validateFunction;
  final void Function(String)? onSaved, onChange;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode, nextFocusNode;
  final VoidCallback? submitAction;
  final bool? enableErrorMessage;
  final void Function(String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? bordercolor, backgroundColor, labelColor, borderColor;
  final bool? autofocus;
  final String? label;
  final String? firstLabel;
  final String? lastLabel;
  final List<TextInputFormatter>? inputFormatters;
  final bool isLoading;
  final double borderRadius;
  final double? borderWidth;
  final String? initialValue;

  const AppTextField(
      {Key? key,
      this.width,
      this.backgroundColor,
      this.isLoading = false,
      this.hintText,
      this.controller,
      this.minLines = 1,
      this.obscureText = false,
      this.enabled = true,
      this.validateFunction,
      this.onSaved,
      this.onChange,
      this.keyboardType,
      this.textInputAction,
      this.focusNode,
      this.nextFocusNode,
      this.submitAction,
      this.enableErrorMessage = true,
      this.maxLines = 1,
      this.maxLength,
      this.onFieldSubmitted,
      this.suffixIcon,
      this.prefixIcon,
      this.bordercolor,
      this.autofocus,
      this.label,
      this.firstLabel,
      this.lastLabel,
      this.inputFormatters,
      this.borderRadius = 8,
      this.initialValue,
      this.labelSize,
      this.labelColor,
      this.onTap,
      this.borderWidth,
      this.borderColor})
      : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  String? error;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: textTheme.headlineMedium?.copyWith(
              color: widget.labelColor ?? colorScheme.onBackground,
            ),
          ),
        Transform.scale(
          scaleY: 1.0,
          child: TextFormField(
            maxLength: widget.maxLength,
            initialValue: widget.initialValue,
            textAlign: TextAlign.left,
            autofocus: widget.autofocus ?? false,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            enabled: widget.enabled,
            validator: widget.validateFunction != null
                ? widget.validateFunction!
                : (value) {
                    return null;
                  },
            onSaved: (val) {
              error = widget.validateFunction!(val);
              setState(() {});
              widget.onSaved!(val!);
            },
            onChanged: (val) {
              widget.validateFunction != null
                  ? error = widget.validateFunction!(val)
                  : error = null;
              setState(() {});
              if (widget.onChange != null) widget.onChange!(val);
            },
            onTap: widget.onTap,
            style: const TextStyle(
              fontSize: 15.0,
            ),
            cursorColor: AppColors.primaryColor,
            key: widget.key,
            maxLines: widget.maxLines,
            controller: widget.controller,
            obscureText: widget.obscureText!,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            focusNode: widget.focusNode,
            onFieldSubmitted: widget.onFieldSubmitted,
            decoration: InputDecoration(
              // labelText: widget.labelText,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              filled: true,
              enabled: false,

              // errorStyle: const TextStyle(
              //   fontSize: 10,
              // ),
              fillColor: widget.backgroundColor ?? AppColors.white,
              hintText: widget.hintText,
              hintStyle: AppTextStyle.bodyMedium,
              errorStyle: const TextStyle(color: AppColors.red),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: const BorderSide(
                  color: AppColors.red,
                  width: 1,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: const BorderSide(
                  color: AppColors.lightPurple,
                  width: 1,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 0.5,
                ),
              ),
              labelStyle: const TextStyle(
                color: AppColors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                  color: AppColors.grey,
                  width: widget.borderWidth ?? 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                  color: widget.borderColor ?? AppColors.grey,
                  width: 0.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: const BorderSide(
                  color: AppColors.lightPurple,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
