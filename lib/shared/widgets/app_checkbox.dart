import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class AppCheckbox extends StatefulWidget {
  AppCheckbox(
      {super.key,
      this.fontStyle,
      this.alignment,
      this.isRightCheck = false,
      this.iconSize,
      this.value,
      this.onChange,
      this.text,
      this.width,
      this.margin});

  CheckboxFontStyle? fontStyle;

  Alignment? alignment;

  bool? isRightCheck;

  double? iconSize;

  bool? value;

  Function(bool)? onChange;

  String? text;

  double? width;

  EdgeInsetsGeometry? margin;

  @override
  State<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return InkWell(
      onTap: () {
        setState(() {
          widget.value = !(widget.value!);
        });
        widget.onChange!(widget.value!);
      },
      child: Container(
        width: widget.width,
        margin: widget.margin ?? EdgeInsets.zero,
        child: widget.isRightCheck!
            ? getRightSideCheckbox()
            : getLeftSideCheckbox(),
      ),
    );
  }

  Widget getRightSideCheckbox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 8,
          ),
          child: getTextWidget(),
        ),
        getCheckboxWidget(),
      ],
    );
  }

  Widget getLeftSideCheckbox() {
    return Row(
      children: [
        getCheckboxWidget(),
        Padding(
          padding: const EdgeInsets.only(
            left: 8,
          ),
          child: getTextWidget(),
        ),
      ],
    );
  }

  Widget getTextWidget() {
    return Text(
      widget.text ?? "",
      textAlign: TextAlign.center,
      style: _setFontStyle(),
    );
  }

  Widget getCheckboxWidget() {
    return SizedBox(
      height: widget.iconSize,
      width: widget.iconSize,
      child: Checkbox(
        value: widget.value ?? false,
        onChanged: (value) {
          widget.onChange!(value!);
          setState(() {
            widget.value = !widget.value!;
          });
        },
        fillColor: widget.value!
            ? MaterialStateProperty.all(AppColors.primaryColor)
            : MaterialStateProperty.all(AppColors.white),
        checkColor: AppColors.white,
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      default:
        return const TextStyle(
          color: AppColors.black,
          fontSize: 14,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum CheckboxFontStyle { dmSans }
