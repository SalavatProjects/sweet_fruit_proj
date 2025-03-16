import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle interW600Text(double fontSize) {
    return TextStyle(
      fontFamily: 'Inter',
      height: 1,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: AppColors.text
    );
  }

  static TextStyle interW500Text(double fontSize) {
    return TextStyle(
        fontFamily: 'Inter',
        height: 1,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: AppColors.text
    );
  }

  static TextStyle interW400Text2(double fontSize) {
    return TextStyle(
        fontFamily: 'Inter',
        height: 1,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: AppColors.text2
    );
  }

  static TextStyle exoW600Text(double fontSize) {
    return TextStyle(
        fontFamily: 'Inter',
        height: 1,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: AppColors.text
    );
  }

  static TextStyle exoW600White(double fontSize) {
    return TextStyle(
        fontFamily: 'Inter',
        height: 1,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: AppColors.white
    );
  }

  static TextStyle exoW500Text(double fontSize) {
    return TextStyle(
        fontFamily: 'Inter',
        height: 1,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: AppColors.text
    );
  }

  static TextStyle exoW500Text2(double fontSize) {
    return TextStyle(
        fontFamily: 'Inter',
        height: 1,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: AppColors.text2
    );
  }

  static TextStyle exoW500White(double fontSize) {
    return TextStyle(
        fontFamily: 'Inter',
        height: 1,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: AppColors.white
    );
  }

  static TextStyle exoW400Text2(double fontSize) {
    return TextStyle(
        fontFamily: 'Inter',
        height: 1.2,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: AppColors.text2
    );
  }

  static TextStyle exoW400White(double fontSize) {
    return TextStyle(
        fontFamily: 'Inter',
        height: 1,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: AppColors.white
    );
  }

  static TextStyle quicksandW600Text(double fontSize) {
    return TextStyle(
      fontFamily: 'Quicksand',
      height: 1,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: AppColors.text
    );
  }
}