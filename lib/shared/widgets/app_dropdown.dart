import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AppDropdown extends StatelessWidget {
  AppDropdown({
    super.key,
    this.shape,
    this.padding,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.width,
    this.height,
    this.margin,
    this.focusNode,
    this.icon,
    this.hintText,
    this.prefix,
    this.prefixConstraints,
    this.items,
    this.onChanged,
    this.onSaved,
    this.borderRadius,
    this.validator,
    this.onTap,
  });

  DropDownShape? shape;

  DropDownPadding? padding;

  DropDownVariant? variant;

  DropDownFontStyle? fontStyle;

  Alignment? alignment;

  double? width, height;

  EdgeInsetsGeometry? margin;

  FocusNode? focusNode;

  Widget? icon;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  List<String>? items;

  final void Function()? onTap;

  Function(String)? onChanged;
  Function(String)? onSaved;
  BorderRadiusGeometry? borderRadius;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildDropDownWidget(),
          )
        : _buildDropDownWidget();
  }

  _buildDropDownWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.maxFinite,
        height: height,
        margin: margin,
        decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(12)),
        child: DropdownButtonFormField(
          focusNode: focusNode,
          isExpanded: true,
          icon: icon ??
              const Icon(
                Icons.expand_more,
                color: AppColors.grey,
              ),
          style: _setFontStyle(),
          decoration: _buildDecoration(),
          items: items?.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (value) {
            onChanged!(value.toString());
          },
          validator: validator,
          onSaved: (v) {
            onSaved!(v.toString());
          },
        ),
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setHintFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      // contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case DropDownFontStyle.DmSans14:
        return AppTextStyle.bodyMedium
            .copyWith(fontWeight: FontWeight.w500, fontSize: 14);
      default:
        return AppTextStyle.bodyMedium.copyWith(fontWeight: FontWeight.w500);
    }
  }

  _setHintFontStyle() {
    switch (fontStyle) {
      case DropDownFontStyle.DmSans16:
        return AppTextStyle.bodyMedium.copyWith(fontWeight: FontWeight.w500);
      default:
        return AppTextStyle.bodyMedium.copyWith(fontWeight: FontWeight.w500);
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case DropDownShape.roundedBorder4:
        return BorderRadius.circular(
          12,
        );
      default:
        return BorderRadius.circular(
          12,
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case DropDownVariant.fillGray900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case DropDownVariant.fillWhite:
        return OutlineInputBorder(
            borderRadius: _setOutlineBorderRadius(),
            borderSide: const BorderSide(
              color: AppColors.lightPurple,
              width: 1,
            ));
      case DropDownVariant.none:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case DropDownVariant.fillGray900:
        return AppColors.lightPurple;
      case DropDownVariant.fillWhite:
        return AppColors.white;
      default:
        return AppColors.lightPurple;
    }
  }

  _setFilled() {
    switch (variant) {
      case DropDownVariant.fillGray900:
        return true;
      case DropDownVariant.none:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case DropDownPadding.paddingT11:
        return EdgeInsets.fromLTRB(8.w, 11.h, 0, 11.h);
      default:
        return EdgeInsets.fromLTRB(8.w, 11.h, 0, 11.h);
    }
  }
}

enum DropDownShape {
  roundedBorder8,
  roundedBorder4,
}

enum DropDownPadding {
  paddingT16,
  paddingT11,
}

enum DropDownVariant { none, fillGray100, fillGray900, fillWhite }

enum DropDownFontStyle {
  DmSans14,
  DmSans16,
}
