import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gethire/size_config.dart';

enum DeviceType { Phone, Tablet }

class AppTheme {
  static Color? shimmerColor = Colors.grey[100];
  static Color shimmerBaseColor = const Color(0xff3C3C43).withOpacity(0.05);
  static Color shimmerHighlightColor = const Color(0xff3C3C43).withOpacity(0.1);

  static const Color primaryColor = Color(0xff3252BB);
  static const Color blackFontColor = Color(0xff1D1D1D);

  static const Color iconColor =
      Color(0xff7187FE); //BottomNavBar Active Icon Color

  static const Color graywhite = Color(0xffB1B1B1);
  static const Color whiteColor = Color(0xffFFFFFF);
  static const Color litterwhite = Color(0xffFBFBFB);
  static const Color blackColor = Color(0xff000000);

  static final ThemeData globalTheme = ThemeData(
      primaryColor: const Color(0xff3252BB),
      scaffoldBackgroundColor: Colors.white,
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.transparent,
      ),
      appBarTheme: const AppBarTheme(
          color: Color(0xffffffff),
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: Color(0xff000000),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.dark),
      textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 17.0,
            color: Color(0xff000000),
          ),
          button: TextStyle(
            fontSize: 17.0,
            color: Color(0xff000000),
          )),
      backgroundColor: const Color(0xffFFFFFF),
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: const Color(0xff6C5DD3)));
}

enum FontStyles { HelveticaNeue, SofiaPro, HelveticaNeueLight, Helvetica }

enum TextType {
  largeText,
  semiLargeText,
  heading,
  subHeading,
  topic,
  text,
  smallText,
}

TextStyle getFontStyle({
  TextType? textType,
  FontStyles? fontStyle,
  double? fontSize,
  double? letterSpacing,
  Color color = AppTheme.whiteColor,
  FontWeight? fontWeight,
  double? height,
}) {
  String? fontFamily;

  switch (fontStyle) {
    case FontStyles.SofiaPro:
      fontFamily = 'Sofia Pro';
      break;
    case FontStyles.Helvetica:
      fontFamily = 'Helvetica';
      break;
    case FontStyles.HelveticaNeue:
      fontFamily = 'Helvetica Neue';
      break;
    case FontStyles.HelveticaNeueLight:
      fontFamily = 'Helvetica Neue Light';
      break;
    default:
      fontFamily = 'Montserrat';
  }
  letterSpacing ??= 0.0;
  switch (textType) {
    case TextType.largeText:
      return TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight ?? FontWeight.w700,
          fontSize: 30.fh,
          letterSpacing: letterSpacing,
          color: color,
          height: height);

    case TextType.semiLargeText:
      return TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: 24.fh,
          letterSpacing: letterSpacing,
          color: color,
          height: height);

    case TextType.heading:
      return TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: 22.fh,
          letterSpacing: letterSpacing,
          color: color,
          height: height);

    case TextType.subHeading:
      return TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: 20.fh,
          letterSpacing: letterSpacing,
          color: color,
          height: height);

    case TextType.topic:
      return TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: 18.fh,
          letterSpacing: letterSpacing,
          color: color,
          height: height);

    case TextType.text:
      return TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: 16.fh,
          letterSpacing: letterSpacing,
          color: color,
          height: height);

    case TextType.smallText:
      return TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: 14.fh,
          letterSpacing: letterSpacing,
          color: color,
          height: height);

    default:
      return TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight ?? FontWeight.w400,
          letterSpacing: letterSpacing,
          fontSize: fontSize ?? 18.fh,
          color: color,
          height: height);
  }
}
