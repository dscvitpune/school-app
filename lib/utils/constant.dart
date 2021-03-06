import 'dart:ui';

import 'package:flutter/material.dart';

const Color primaryColorDark = Color(0xFF1796FF);
const Color primaryColorLight = Color(0xFF4DBFFD);
const Color backgroundColor = Color(0xFFFCFCFC);
const Color black = Color(0xFF1C252E);
const Color white = Color(0xFFFFFFFF);
const Color darkBlack = Color(0xFF000000);
const Color grey = Color(0xFFAEB1B8);
const Color lightGrey = Color(0xFFCFD4E6);
const Color googleColor = Color(0xFF1A73E8);

const Color green = Color(0xFF73C700);
const Color purple = Color(0xFFA237F3);
const Color blue = Color(0xFF00A5FF);
const Color pink = Color(0xFFFD4176);
const Color orange = Color(0xFFFF9300);

const double spaceS = 8.0;
const double spaceM = 16.0;

const double paddingS = 8.0;
const double paddingM = 16.0;
const double paddingL = 32.0;

const double headline1 = 96.0;
const double headline2 = 60.0;
const double headline3 = 48.0;
const double headline4 = 34.0;
const double headline5 = 24.0;
const double headline6 = 20.0;
const double subtitle1 = 16.0;
const double subtitle2 = 14.0;
const double body1 = 16.0;
const double body2 = 14.0;
const double button = 14.0;
const double caption = 12.0;
const double overline = 10.0;

Map<int, Color> getSwatch(Color color) {
  final hslColor = HSLColor.fromColor(color);
  final lightness = hslColor.lightness;
  final lowDivisor = 6;

  final highDivisor = 5;

  final lowStep = (1.0 - lightness) / lowDivisor;
  final highStep = lightness / highDivisor;

  return {
    50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
    100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
    200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
    300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
    400: (hslColor.withLightness(lightness + lowStep)).toColor(),
    500: (hslColor.withLightness(lightness)).toColor(),
    600: (hslColor.withLightness(lightness - highStep)).toColor(),
    700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
    800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
    900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
  };
}

MaterialColor primaryMaterialColor =
    MaterialColor(0xFF1796FF, getSwatch(primaryColorDark));

//Mihir's constant file

const dashboard_stats_background = const Color(0xFFE7E9EE);
const dashboard_date = const Color(0xFF7E7E7E);
const dasboard_name = const Color(0xFF384E70);
const dashboard_active_blue = const Color(0xFF0068FF);
const dashboard_active_blue_shadow = const Color(0xFF0068FF);
const profile_pic_background = const Color(0xFFCDE7FB);

const course_card_red = const Color(0xFFF16369);
const course_card_blue = const Color(0xFF719DE3);
const course_card_green = const Color(0xFF6AD469);
const course_card_marron = const Color(0xFFD78DAA);
const course_card_yellow = const Color(0xFFFFD46D);
const course_card_orange = const Color(0xFFFFA77C);

const transparent_overlay = const Color(0x00000000);
