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
  static const TextStyle bodyMediumWhite = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: 'DmSans',
    fontSize: 16,
    color: AppColors.white,
  );
  static const TextStyle bodySmall = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'DmSans',
    fontSize: 12,
    color: AppColors.grey,
  );
  static const TextStyle bodyMediumX = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: 'DmSans',
    fontSize: 16,
    color: AppColors.grey,
  );
  static const TextStyle redHatMedium = TextStyle(
      fontFamily: 'RedHatDisplay',
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: AppColors.black);
}
