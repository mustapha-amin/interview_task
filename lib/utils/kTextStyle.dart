import 'package:flutter/material.dart';

TextStyle kTextStyle(
  double fontSize, {
  Color? color,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
}) {
  return TextStyle(
    fontSize: fontSize,
    color: color ?? Colors.black,
    fontWeight: fontWeight ?? FontWeight.w400,
    fontFamily: 'ProximaNova',
    fontStyle: fontStyle ?? FontStyle.normal,
  );
}
