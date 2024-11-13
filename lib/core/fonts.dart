import 'package:flutter/material.dart';

class AppFonts {
  static TextStyle textStyle({
    required String fontFamily,
    required FontWeight fontWeight,
    required Color color,
    double fontSize = 14.0,
    double? height,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
      height: height,
    );
  }

  static TextStyle interText({
    required FontWeight fontWeight,
    required Color color,
    double fontSize = 14.0,
    double? height,
  }) {
    return textStyle(
      fontFamily: 'Inter',
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
      height: height,
    );
  }

  static TextStyle readexProText({
    required FontWeight fontWeight,
    required Color color,
    double fontSize = 14.0,
    double? height,
  }) {
    return textStyle(
      fontFamily: 'ReadexPro',
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
      height: height,
    );
  }

  static TextStyle interLight({
    double fontSize = 14.0,
    required Color color,
    double? height,
  }) {
    return interText(fontWeight: FontWeight.w300, color: color, fontSize: fontSize, height: height);
  }

  static TextStyle interRegular({
    double fontSize = 14.0,
    required Color color,
    double? height,
  }) {
    return interText(fontWeight: FontWeight.w400, color: color, fontSize: fontSize, height: height);
  }

  static TextStyle interBold({
    double fontSize = 14.0,
    required Color color,
    double? height,
  }) {
    return interText(fontWeight: FontWeight.w700, color: color, fontSize: fontSize, height: height);
  }

  static TextStyle interSemiBold({
    double fontSize = 14.0,
    required Color color,
    double? height,
  }) {
    return interText(fontWeight: FontWeight.w600, color: color, fontSize: fontSize, height: height);
  }

  static TextStyle interMedium({
    double fontSize = 14.0,
    required Color color,
    double? height,
  }) {
    return interText(fontWeight: FontWeight.w500, color: color, fontSize: fontSize, height: height);
  }

  static TextStyle readexProLight({
    double fontSize = 14.0,
    required Color color,
    double? height,
  }) {
    return readexProText(fontWeight: FontWeight.w300, color: color, fontSize: fontSize, height: height);
  }

  static TextStyle readexProRegular({
    double fontSize = 14.0,
    required Color color,
    double? height,
  }) {
    return readexProText(fontWeight: FontWeight.w400, color: color, fontSize: fontSize, height: height);
  }

  static TextStyle readexProBold({
    double fontSize = 14.0,
    required Color color,
    double? height,
  }) {
    return readexProText(fontWeight: FontWeight.w700, color: color, fontSize: fontSize, height: height);
  }

  static TextStyle readexProSemiBold({
    double fontSize = 14.0,
    required Color color,
    double? height,
  }) {
    return readexProText(fontWeight: FontWeight.w600, color: color, fontSize: fontSize, height: height);
  }

  static TextStyle readexProMedium({
    double fontSize = 14.0,
    required Color color,
    double? height,
  }) {
    return readexProText(fontWeight: FontWeight.w500, color: color, fontSize: fontSize, height: height);
  }
}
