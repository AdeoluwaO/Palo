import 'package:dispatchapp/shared/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle headerLarge = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: 'DmSans',
    fontSize: 30,
    color: AppColors.black,
  );
  static const TextStyle headerMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'DmSans',
    fontSize: 24,
    color: AppColors.black,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'DmSans',
    fontSize: 16,
    color: AppColors.grey,
  );
}
