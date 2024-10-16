import 'package:flutter/material.dart';

class MaterialColors {
//   ///////////////COLOR WHITE///////////////
//   static const int _COLOR_WHITE_HEX = 0xFFFFFFFF;
//   static const Map<int, Color> _COLOR_WHITE_MAP = {
//     50: Color.fromRGBO(255, 255, 255, .1),
//     100: Color.fromRGBO(255, 255, 255, .2),
//     200: Color.fromRGBO(255, 255, 255, .3),
//     300: Color.fromRGBO(255, 255, 255, .4),
//     400: Color.fromRGBO(255, 255, 255, .5),
//     500: Color.fromRGBO(255, 255, 255, .6),
//     600: Color.fromRGBO(255, 255, 255, .7),
//     700: Color.fromRGBO(255, 255, 255, .8),
//     800: Color.fromRGBO(255, 255, 255, .9),
//     900: Color.fromRGBO(255, 255, 255, 1),
//   };
//
//   static const MaterialColor white = MaterialColor(_COLOR_WHITE_HEX, _COLOR_WHITE_MAP);
//
// ///////////////COLOR BLACK///////////////
//   static const int _COLOR_BLACK_HEX = 0xFF000000;
//   static const Map<int, Color> _COLOR_BLACK_MAP = {
//     50: Color.fromRGBO(0, 0, 0, .1),
//     100: Color.fromRGBO(0, 0, 0, .2),
//     200: Color.fromRGBO(0, 0, 0, .3),
//     300: Color.fromRGBO(0, 0, 0, .4),
//     400: Color.fromRGBO(0, 0, 0, .5),
//     500: Color.fromRGBO(0, 0, 0, .6),
//     600: Color.fromRGBO(0, 0, 0, .7),
//     700: Color.fromRGBO(0, 0, 0, .8),
//     800: Color.fromRGBO(0, 0, 0, .9),
//     900: Color.fromRGBO(0, 0, 0, 1),
//   };
//
//   static const MaterialColor black = MaterialColor(_COLOR_BLACK_HEX, _COLOR_BLACK_MAP);
//
// ///////////////COLOR RED///////////////
//   static const int _COLOR_RED_HEX = 0xFFB71C1C;
//   static const Map<int, Color> _COLOR_RED_MAP = {
//     50: Color.fromRGBO(183, 28, 28, .1),
//     100: Color.fromRGBO(183, 28, 28, .2),
//     200: Color.fromRGBO(183, 28, 28, .3),
//     300: Color.fromRGBO(183, 28, 28, .4),
//     400: Color.fromRGBO(183, 28, 28, .5),
//     500: Color.fromRGBO(183, 28, 28, .6),
//     600: Color.fromRGBO(183, 28, 28, .7),
//     700: Color.fromRGBO(183, 28, 28, .8),
//     800: Color.fromRGBO(183, 28, 28, .9),
//     900: Color.fromRGBO(183, 28, 28, 1),
//   };
//
//   static const MaterialColor red = MaterialColor(_COLOR_RED_HEX, _COLOR_RED_MAP);
//
// ///////////////COLOR PINK///////////////
//   static const int _COLOR_PINK_HEX = 0xFF880E4F;
//   static const Map<int, Color> _COLOR_PINK_MAP = {
//     50: Color.fromRGBO(136, 14, 79, .1),
//     100: Color.fromRGBO(136, 14, 79, .2),
//     200: Color.fromRGBO(136, 14, 79, .3),
//     300: Color.fromRGBO(136, 14, 79, .4),
//     400: Color.fromRGBO(136, 14, 79, .5),
//     500: Color.fromRGBO(136, 14, 79, .6),
//     600: Color.fromRGBO(136, 14, 79, .7),
//     700: Color.fromRGBO(136, 14, 79, .8),
//     800: Color.fromRGBO(136, 14, 79, .9),
//     900: Color.fromRGBO(136, 14, 79, 1),
//   };
//
//   static const MaterialColor pink = MaterialColor(_COLOR_PINK_HEX, _COLOR_PINK_MAP);
//
// ///////////////COLOR PURPLE///////////////
//   static const int _COLOR_PURPLE_HEX = 0xFF4A148C;
//   static const Map<int, Color> _COLOR_PURPLE_MAP = {
//     50: Color.fromRGBO(74, 20, 140, .1),
//     100: Color.fromRGBO(74, 20, 140, .2),
//     200: Color.fromRGBO(74, 20, 140, .3),
//     300: Color.fromRGBO(74, 20, 140, .4),
//     400: Color.fromRGBO(74, 20, 140, .5),
//     500: Color.fromRGBO(74, 20, 140, .6),
//     600: Color.fromRGBO(74, 20, 140, .7),
//     700: Color.fromRGBO(74, 20, 140, .8),
//     800: Color.fromRGBO(74, 20, 140, .9),
//     900: Color.fromRGBO(74, 20, 140, 1),
//   };
//
//   static const MaterialColor purple = MaterialColor(_COLOR_PURPLE_HEX, _COLOR_PURPLE_MAP);
//
// ///////////////COLOR DEEP_PURPLE///////////////
//   static const int _COLOR_DEEP_PURPLE_HEX = 0xFF311B92;
//   static const Map<int, Color> _COLOR_DEEP_PURPLE_MAP = {
//     50: Color.fromRGBO(49, 27, 146, .1),
//     100: Color.fromRGBO(49, 27, 146, .2),
//     200: Color.fromRGBO(49, 27, 146, .3),
//     300: Color.fromRGBO(49, 27, 146, .4),
//     400: Color.fromRGBO(49, 27, 146, .5),
//     500: Color.fromRGBO(49, 27, 146, .6),
//     600: Color.fromRGBO(49, 27, 146, .7),
//     700: Color.fromRGBO(49, 27, 146, .8),
//     800: Color.fromRGBO(49, 27, 146, .9),
//     900: Color.fromRGBO(49, 27, 146, 1),
//   };
//
//   static const MaterialColor deep_purple = MaterialColor(_COLOR_DEEP_PURPLE_HEX, _COLOR_DEEP_PURPLE_MAP);
//
// ///////////////COLOR INDIGO///////////////
//   static const int _COLOR_INDIGO_HEX = 0xFF1A237E;
//   static const Map<int, Color> _COLOR_INDIGO_MAP = {
//     50: Color.fromRGBO(26, 35, 126, .1),
//     100: Color.fromRGBO(26, 35, 126, .2),
//     200: Color.fromRGBO(26, 35, 126, .3),
//     300: Color.fromRGBO(26, 35, 126, .4),
//     400: Color.fromRGBO(26, 35, 126, .5),
//     500: Color.fromRGBO(26, 35, 126, .6),
//     600: Color.fromRGBO(26, 35, 126, .7),
//     700: Color.fromRGBO(26, 35, 126, .8),
//     800: Color.fromRGBO(26, 35, 126, .9),
//     900: Color.fromRGBO(26, 35, 126, 1),
//   };
//
//   static const MaterialColor indigo = MaterialColor(_COLOR_INDIGO_HEX, _COLOR_INDIGO_MAP);
//
// ///////////////COLOR BLUE///////////////
//   static const int _COLOR_BLUE_HEX = 0xFF0D47A1;
//   static const Map<int, Color> _COLOR_BLUE_MAP = {
//     50: Color.fromRGBO(13, 71, 161, .1),
//     100: Color.fromRGBO(13, 71, 161, .2),
//     200: Color.fromRGBO(13, 71, 161, .3),
//     300: Color.fromRGBO(13, 71, 161, .4),
//     400: Color.fromRGBO(13, 71, 161, .5),
//     500: Color.fromRGBO(13, 71, 161, .6),
//     600: Color.fromRGBO(13, 71, 161, .7),
//     700: Color.fromRGBO(13, 71, 161, .8),
//     800: Color.fromRGBO(13, 71, 161, .9),
//     900: Color.fromRGBO(13, 71, 161, 1),
//   };
//
//   static const MaterialColor blue = MaterialColor(_COLOR_BLUE_HEX, _COLOR_BLUE_MAP);
//
// ///////////////COLOR LIGHT_BLUE///////////////
//   static const int _COLOR_LIGHT_BLUE_HEX = 0xFF01579B;
//   static const Map<int, Color> _COLOR_LIGHT_BLUE_MAP = {
//     50: Color.fromRGBO(1, 87, 155, .1),
//     100: Color.fromRGBO(1, 87, 155, .2),
//     200: Color.fromRGBO(1, 87, 155, .3),
//     300: Color.fromRGBO(1, 87, 155, .4),
//     400: Color.fromRGBO(1, 87, 155, .5),
//     500: Color.fromRGBO(1, 87, 155, .6),
//     600: Color.fromRGBO(1, 87, 155, .7),
//     700: Color.fromRGBO(1, 87, 155, .8),
//     800: Color.fromRGBO(1, 87, 155, .9),
//     900: Color.fromRGBO(1, 87, 155, 1),
//   };
//
//   static const MaterialColor light_blue = MaterialColor(_COLOR_LIGHT_BLUE_HEX, _COLOR_LIGHT_BLUE_MAP);
//
// ///////////////COLOR CYAN///////////////
//   static const int _COLOR_CYAN_HEX = 0xFF006064;
//   static const Map<int, Color> _COLOR_CYAN_MAP = {
//     50: Color.fromRGBO(0, 96, 100, .1),
//     100: Color.fromRGBO(0, 96, 100, .2),
//     200: Color.fromRGBO(0, 96, 100, .3),
//     300: Color.fromRGBO(0, 96, 100, .4),
//     400: Color.fromRGBO(0, 96, 100, .5),
//     500: Color.fromRGBO(0, 96, 100, .6),
//     600: Color.fromRGBO(0, 96, 100, .7),
//     700: Color.fromRGBO(0, 96, 100, .8),
//     800: Color.fromRGBO(0, 96, 100, .9),
//     900: Color.fromRGBO(0, 96, 100, 1),
//   };
//
//   static const MaterialColor cyan = MaterialColor(_COLOR_CYAN_HEX, _COLOR_CYAN_MAP);
//
// ///////////////COLOR TEAL///////////////
//   static const int _COLOR_TEAL_HEX = 0xFF004D40;
//   static const Map<int, Color> _COLOR_TEAL_MAP = {
//     50: Color.fromRGBO(0, 77, 64, .1),
//     100: Color.fromRGBO(0, 77, 64, .2),
//     200: Color.fromRGBO(0, 77, 64, .3),
//     300: Color.fromRGBO(0, 77, 64, .4),
//     400: Color.fromRGBO(0, 77, 64, .5),
//     500: Color.fromRGBO(0, 77, 64, .6),
//     600: Color.fromRGBO(0, 77, 64, .7),
//     700: Color.fromRGBO(0, 77, 64, .8),
//     800: Color.fromRGBO(0, 77, 64, .9),
//     900: Color.fromRGBO(0, 77, 64, 1),
//   };
//
//   static const MaterialColor teal = MaterialColor(_COLOR_TEAL_HEX, _COLOR_TEAL_MAP);
//
// ///////////////COLOR GREEN///////////////
//   static const int _COLOR_GREEN_HEX = 0xFF1B5E20;
//   static const Map<int, Color> _COLOR_GREEN_MAP = {
//     50: Color.fromRGBO(27, 94, 32, .1),
//     100: Color.fromRGBO(27, 94, 32, .2),
//     200: Color.fromRGBO(27, 94, 32, .3),
//     300: Color.fromRGBO(27, 94, 32, .4),
//     400: Color.fromRGBO(27, 94, 32, .5),
//     500: Color.fromRGBO(27, 94, 32, .6),
//     600: Color.fromRGBO(27, 94, 32, .7),
//     700: Color.fromRGBO(27, 94, 32, .8),
//     800: Color.fromRGBO(27, 94, 32, .9),
//     900: Color.fromRGBO(27, 94, 32, 1),
//   };
//
//   static const MaterialColor green = MaterialColor(_COLOR_GREEN_HEX, _COLOR_GREEN_MAP);
//
// ///////////////COLOR LIGHT_GREEN///////////////
//   static const int _COLOR_LIGHT_GREEN_HEX = 0xFF33691E;
//   static const Map<int, Color> _COLOR_LIGHT_GREEN_MAP = {
//     50: Color.fromRGBO(51, 105, 30, .1),
//     100: Color.fromRGBO(51, 105, 30, .2),
//     200: Color.fromRGBO(51, 105, 30, .3),
//     300: Color.fromRGBO(51, 105, 30, .4),
//     400: Color.fromRGBO(51, 105, 30, .5),
//     500: Color.fromRGBO(51, 105, 30, .6),
//     600: Color.fromRGBO(51, 105, 30, .7),
//     700: Color.fromRGBO(51, 105, 30, .8),
//     800: Color.fromRGBO(51, 105, 30, .9),
//     900: Color.fromRGBO(51, 105, 30, 1),
//   };
//
//   static const MaterialColor light_green = MaterialColor(_COLOR_LIGHT_GREEN_HEX, _COLOR_LIGHT_GREEN_MAP);
//
// ///////////////COLOR LIME///////////////
//   static const int _COLOR_LIME_HEX = 0xFF827717;
//   static const Map<int, Color> _COLOR_LIME_MAP = {
//     50: Color.fromRGBO(130, 119, 23, .1),
//     100: Color.fromRGBO(130, 119, 23, .2),
//     200: Color.fromRGBO(130, 119, 23, .3),
//     300: Color.fromRGBO(130, 119, 23, .4),
//     400: Color.fromRGBO(130, 119, 23, .5),
//     500: Color.fromRGBO(130, 119, 23, .6),
//     600: Color.fromRGBO(130, 119, 23, .7),
//     700: Color.fromRGBO(130, 119, 23, .8),
//     800: Color.fromRGBO(130, 119, 23, .9),
//     900: Color.fromRGBO(130, 119, 23, 1),
//   };
//
//   static const MaterialColor lime = MaterialColor(_COLOR_LIME_HEX, _COLOR_LIME_MAP);
//
// ///////////////COLOR YELLOW///////////////
//   static const int _COLOR_YELLOW_HEX = 0xFFF57F17;
//   static const Map<int, Color> _COLOR_YELLOW_MAP = {
//     50: Color.fromRGBO(245, 127, 23, .1),
//     100: Color.fromRGBO(245, 127, 23, .2),
//     200: Color.fromRGBO(245, 127, 23, .3),
//     300: Color.fromRGBO(245, 127, 23, .4),
//     400: Color.fromRGBO(245, 127, 23, .5),
//     500: Color.fromRGBO(245, 127, 23, .6),
//     600: Color.fromRGBO(245, 127, 23, .7),
//     700: Color.fromRGBO(245, 127, 23, .8),
//     800: Color.fromRGBO(245, 127, 23, .9),
//     900: Color.fromRGBO(245, 127, 23, 1),
//   };
//
//   static const MaterialColor yellow = MaterialColor(_COLOR_YELLOW_HEX, _COLOR_YELLOW_MAP);
//
// ///////////////COLOR AMBER///////////////
//   static const int _COLOR_AMBER_HEX = 0xFFFF6F00;
//   static const Map<int, Color> _COLOR_AMBER_MAP = {
//     50: Color.fromRGBO(255, 111, 0, .1),
//     100: Color.fromRGBO(255, 111, 0, .2),
//     200: Color.fromRGBO(255, 111, 0, .3),
//     300: Color.fromRGBO(255, 111, 0, .4),
//     400: Color.fromRGBO(255, 111, 0, .5),
//     500: Color.fromRGBO(255, 111, 0, .6),
//     600: Color.fromRGBO(255, 111, 0, .7),
//     700: Color.fromRGBO(255, 111, 0, .8),
//     800: Color.fromRGBO(255, 111, 0, .9),
//     900: Color.fromRGBO(255, 111, 0, 1),
//   };
//
//   static const MaterialColor amber = MaterialColor(_COLOR_AMBER_HEX, _COLOR_AMBER_MAP);
//
// ///////////////COLOR ORANGE///////////////
//   static const int _COLOR_ORANGE_HEX = 0xFFE65100;
//   static const Map<int, Color> _COLOR_ORANGE_MAP = {
//     50: Color.fromRGBO(230, 81, 0, .1),
//     100: Color.fromRGBO(230, 81, 0, .2),
//     200: Color.fromRGBO(230, 81, 0, .3),
//     300: Color.fromRGBO(230, 81, 0, .4),
//     400: Color.fromRGBO(230, 81, 0, .5),
//     500: Color.fromRGBO(230, 81, 0, .6),
//     600: Color.fromRGBO(230, 81, 0, .7),
//     700: Color.fromRGBO(230, 81, 0, .8),
//     800: Color.fromRGBO(230, 81, 0, .9),
//     900: Color.fromRGBO(230, 81, 0, 1),
//   };
//
//   static const MaterialColor orange = MaterialColor(_COLOR_ORANGE_HEX, _COLOR_ORANGE_MAP);
//
// ///////////////COLOR DEEP_ORANGE///////////////
//   static const int _COLOR_DEEP_ORANGE_HEX = 0xFFBF360C;
//   static const Map<int, Color> _COLOR_DEEP_ORANGE_MAP = {
//     50: Color.fromRGBO(191, 54, 12, .1),
//     100: Color.fromRGBO(191, 54, 12, .2),
//     200: Color.fromRGBO(191, 54, 12, .3),
//     300: Color.fromRGBO(191, 54, 12, .4),
//     400: Color.fromRGBO(191, 54, 12, .5),
//     500: Color.fromRGBO(191, 54, 12, .6),
//     600: Color.fromRGBO(191, 54, 12, .7),
//     700: Color.fromRGBO(191, 54, 12, .8),
//     800: Color.fromRGBO(191, 54, 12, .9),
//     900: Color.fromRGBO(191, 54, 12, 1),
//   };
//
//   static const MaterialColor deep_orange = MaterialColor(_COLOR_DEEP_ORANGE_HEX, _COLOR_DEEP_ORANGE_MAP);
//
// ///////////////COLOR BROWN///////////////
//   static const int _COLOR_BROWN_HEX = 0xFF3E2723;
//   static const Map<int, Color> _COLOR_BROWN_MAP = {
//     50: Color.fromRGBO(62, 39, 35, .1),
//     100: Color.fromRGBO(62, 39, 35, .2),
//     200: Color.fromRGBO(62, 39, 35, .3),
//     300: Color.fromRGBO(62, 39, 35, .4),
//     400: Color.fromRGBO(62, 39, 35, .5),
//     500: Color.fromRGBO(62, 39, 35, .6),
//     600: Color.fromRGBO(62, 39, 35, .7),
//     700: Color.fromRGBO(62, 39, 35, .8),
//     800: Color.fromRGBO(62, 39, 35, .9),
//     900: Color.fromRGBO(62, 39, 35, 1),
//   };
//
//   static const MaterialColor brown = MaterialColor(_COLOR_BROWN_HEX, _COLOR_BROWN_MAP);
//
// ///////////////COLOR GREY///////////////
//   static const int _COLOR_GREY_HEX = 0xFF212121;
//   static const Map<int, Color> _COLOR_GREY_MAP = {
//     50: Color.fromRGBO(33, 33, 33, .1),
//     100: Color.fromRGBO(33, 33, 33, .2),
//     200: Color.fromRGBO(33, 33, 33, .3),
//     300: Color.fromRGBO(33, 33, 33, .4),
//     400: Color.fromRGBO(33, 33, 33, .5),
//     500: Color.fromRGBO(33, 33, 33, .6),
//     600: Color.fromRGBO(33, 33, 33, .7),
//     700: Color.fromRGBO(33, 33, 33, .8),
//     800: Color.fromRGBO(33, 33, 33, .9),
//     900: Color.fromRGBO(33, 33, 33, 1),
//   };
//
//   static const MaterialColor grey = MaterialColor(_COLOR_GREY_HEX, _COLOR_GREY_MAP);
//
// ///////////////COLOR BLUE_GREY///////////////
//   static const int _COLOR_BLUE_GREY_HEX = 0xFF263238;
//   static const Map<int, Color> _COLOR_BLUE_GREY_MAP = {
//     50: Color.fromRGBO(38, 50, 56, .1),
//     100: Color.fromRGBO(38, 50, 56, .2),
//     200: Color.fromRGBO(38, 50, 56, .3),
//     300: Color.fromRGBO(38, 50, 56, .4),
//     400: Color.fromRGBO(38, 50, 56, .5),
//     500: Color.fromRGBO(38, 50, 56, .6),
//     600: Color.fromRGBO(38, 50, 56, .7),
//     700: Color.fromRGBO(38, 50, 56, .8),
//     800: Color.fromRGBO(38, 50, 56, .9),
//     900: Color.fromRGBO(38, 50, 56, 1),
//   };
//
//   static const MaterialColor blue_grey = MaterialColor(_COLOR_BLUE_GREY_HEX, _COLOR_BLUE_GREY_MAP);

  /////////////////////////////////////////////////////////////////////////////
  ///////////////////////////PROPER OPACITY////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////

  ///////////////COLOR RED///////////////
  // static const int _COLOR_RED_HEX = 0xFFC62828;
  // static const Map<int, Color> _COLOR_RED_MAP = {
  //   50: Color.fromRGBO(255, 235, 238, 1),
  //   100: Color.fromRGBO(255, 205, 210, 1),
  //   200: Color.fromRGBO(239, 154, 154, 1),
  //   300: Color.fromRGBO(229, 115, 115, 1),
  //   400: Color.fromRGBO(239, 83, 80, 1),
  //   500: Color.fromRGBO(244, 67, 54, 1),
  //   600: Color.fromRGBO(229, 57, 53, 1),
  //   700: Color.fromRGBO(211, 47, 47, 1),
  //   800: Color.fromRGBO(198, 40, 40, 1),
  //   900: Color.fromRGBO(183, 28, 28, 1),
  // };
  //
  // static const MyMaterialColor red = MyMaterialColor(_COLOR_RED_HEX, _COLOR_RED_MAP);
  //
  // ///////////////COLOR PINK///////////////
  // static const int _COLOR_PINK_HEX = 0xFFAD1457;
  // static const Map<int, Color> _COLOR_PINK_MAP = {
  //   50: Color.fromRGBO(252, 228, 236, 1),
  //   100: Color.fromRGBO(248, 187, 208, 1),
  //   200: Color.fromRGBO(244, 143, 177, 1),
  //   300: Color.fromRGBO(240, 98, 146, 1),
  //   400: Color.fromRGBO(236, 64, 122, 1),
  //   500: Color.fromRGBO(233, 30, 99, 1),
  //   600: Color.fromRGBO(216, 27, 96, 1),
  //   700: Color.fromRGBO(194, 24, 91, 1),
  //   800: Color.fromRGBO(173, 20, 87, 1),
  //   900: Color.fromRGBO(136, 14, 79, 1),
  // };
  //
  // static const MyMaterialColor pink = MyMaterialColor(_COLOR_PINK_HEX, _COLOR_PINK_MAP);
  //
  // ///////////////COLOR PURPLE///////////////
  // static const int _COLOR_PURPLE_HEX = 0xFF6A1B9A;
  // static const Map<int, Color> _COLOR_PURPLE_MAP = {
  //   50: Color.fromRGBO(243, 229, 245, 1),
  //   100: Color.fromRGBO(225, 190, 231, 1),
  //   200: Color.fromRGBO(206, 147, 216, 1),
  //   300: Color.fromRGBO(186, 104, 200, 1),
  //   400: Color.fromRGBO(171, 71, 188, 1),
  //   500: Color.fromRGBO(156, 39, 176, 1),
  //   600: Color.fromRGBO(142, 36, 170, 1),
  //   700: Color.fromRGBO(123, 31, 162, 1),
  //   800: Color.fromRGBO(106, 27, 154, 1),
  //   900: Color.fromRGBO(74, 20, 140, 1),
  // };
  //
  // static const MyMaterialColor purple = MyMaterialColor(_COLOR_PURPLE_HEX, _COLOR_PURPLE_MAP);
  //
  // ///////////////COLOR DEEP_PURPLE///////////////
  // static const int _COLOR_DEEP_PURPLE_HEX = 0xFF4527A0;
  // static const Map<int, Color> _COLOR_DEEP_PURPLE_MAP = {
  //   50: Color.fromRGBO(237, 231, 246, 1),
  //   100: Color.fromRGBO(209, 196, 233, 1),
  //   200: Color.fromRGBO(179, 157, 219, 1),
  //   300: Color.fromRGBO(149, 117, 205, 1),
  //   400: Color.fromRGBO(126, 87, 194, 1),
  //   500: Color.fromRGBO(103, 58, 183, 1),
  //   600: Color.fromRGBO(94, 53, 177, 1),
  //   700: Color.fromRGBO(81, 45, 168, 1),
  //   800: Color.fromRGBO(69, 39, 160, 1),
  //   900: Color.fromRGBO(49, 27, 146, 1),
  // };
  //
  // static const MyMaterialColor deep_purple = MyMaterialColor(_COLOR_DEEP_PURPLE_HEX, _COLOR_DEEP_PURPLE_MAP);
  //
  // ///////////////COLOR INDIGO///////////////
  // static const int _COLOR_INDIGO_HEX = 0xFF283593;
  // static const Map<int, Color> _COLOR_INDIGO_MAP = {
  //   50: Color.fromRGBO(232, 234, 246, 1),
  //   100: Color.fromRGBO(197, 202, 233, 1),
  //   200: Color.fromRGBO(159, 168, 218, 1),
  //   300: Color.fromRGBO(121, 134, 203, 1),
  //   400: Color.fromRGBO(92, 107, 192, 1),
  //   500: Color.fromRGBO(63, 81, 181, 1),
  //   600: Color.fromRGBO(57, 73, 171, 1),
  //   700: Color.fromRGBO(48, 63, 159, 1),
  //   800: Color.fromRGBO(40, 53, 147, 1),
  //   900: Color.fromRGBO(26, 35, 126, 1),
  // };
  //
  // static const MyMaterialColor indigo = MyMaterialColor(_COLOR_INDIGO_HEX, _COLOR_INDIGO_MAP);
  //
  // ///////////////COLOR BLUE///////////////
  // static const int _COLOR_BLUE_HEX = 0xFF1565C0;
  // static const Map<int, Color> _COLOR_BLUE_MAP = {
  //   50: Color.fromRGBO(227, 242, 253, 1),
  //   100: Color.fromRGBO(187, 222, 251, 1),
  //   200: Color.fromRGBO(144, 202, 249, 1),
  //   300: Color.fromRGBO(100, 181, 246, 1),
  //   400: Color.fromRGBO(66, 165, 245, 1),
  //   500: Color.fromRGBO(33, 150, 243, 1),
  //   600: Color.fromRGBO(30, 136, 229, 1),
  //   700: Color.fromRGBO(25, 118, 210, 1),
  //   800: Color.fromRGBO(21, 101, 192, 1),
  //   900: Color.fromRGBO(13, 71, 161, 1),
  // };
  //
  // static const MyMaterialColor blue = MyMaterialColor(_COLOR_BLUE_HEX, _COLOR_BLUE_MAP);
  //
  // ///////////////COLOR LIGHT_BLUE///////////////
  // static const int _COLOR_LIGHT_BLUE_HEX = 0xFF0277BD;
  // static const Map<int, Color> _COLOR_LIGHT_BLUE_MAP = {
  //   50: Color.fromRGBO(225, 245, 254, 1),
  //   100: Color.fromRGBO(179, 229, 252, 1),
  //   200: Color.fromRGBO(129, 212, 250, 1),
  //   300: Color.fromRGBO(79, 195, 247, 1),
  //   400: Color.fromRGBO(41, 182, 246, 1),
  //   500: Color.fromRGBO(3, 169, 244, 1),
  //   600: Color.fromRGBO(3, 155, 229, 1),
  //   700: Color.fromRGBO(2, 136, 209, 1),
  //   800: Color.fromRGBO(2, 119, 189, 1),
  //   900: Color.fromRGBO(1, 87, 155, 1),
  // };
  //
  // static const MyMaterialColor light_blue = MyMaterialColor(_COLOR_LIGHT_BLUE_HEX, _COLOR_LIGHT_BLUE_MAP);
  //
  // ///////////////COLOR CYAN///////////////
  // static const int _COLOR_CYAN_HEX = 0xFF00838F;
  // static const Map<int, Color> _COLOR_CYAN_MAP = {
  //   50: Color.fromRGBO(224, 247, 250, 1),
  //   100: Color.fromRGBO(178, 235, 242, 1),
  //   200: Color.fromRGBO(128, 222, 234, 1),
  //   300: Color.fromRGBO(77, 208, 225, 1),
  //   400: Color.fromRGBO(38, 198, 218, 1),
  //   500: Color.fromRGBO(0, 188, 212, 1),
  //   600: Color.fromRGBO(0, 172, 193, 1),
  //   700: Color.fromRGBO(0, 151, 167, 1),
  //   800: Color.fromRGBO(0, 131, 143, 1),
  //   900: Color.fromRGBO(0, 96, 100, 1),
  // };
  //
  // static const MyMaterialColor cyan = MyMaterialColor(_COLOR_CYAN_HEX, _COLOR_CYAN_MAP);
  //
  // ///////////////COLOR TEAL///////////////
  // static const int _COLOR_TEAL_HEX = 0xFF00695C;
  // static const Map<int, Color> _COLOR_TEAL_MAP = {
  //   50: Color.fromRGBO(224, 242, 241, 1),
  //   100: Color.fromRGBO(178, 223, 219, 1),
  //   200: Color.fromRGBO(128, 203, 196, 1),
  //   300: Color.fromRGBO(77, 182, 172, 1),
  //   400: Color.fromRGBO(38, 166, 154, 1),
  //   500: Color.fromRGBO(0, 150, 136, 1),
  //   600: Color.fromRGBO(0, 137, 123, 1),
  //   700: Color.fromRGBO(0, 121, 107, 1),
  //   800: Color.fromRGBO(0, 105, 92, 1),
  //   900: Color.fromRGBO(0, 77, 64, 1),
  // };
  //
  // static const MyMaterialColor teal = MyMaterialColor(_COLOR_TEAL_HEX, _COLOR_TEAL_MAP);
  //
  // ///////////////COLOR GREEN///////////////
  // static const int _COLOR_GREEN_HEX = 0xFF2E7D32;
  // static const Map<int, Color> _COLOR_GREEN_MAP = {
  //   50: Color.fromRGBO(232, 245, 233, 1),
  //   100: Color.fromRGBO(200, 230, 201, 1),
  //   200: Color.fromRGBO(165, 214, 167, 1),
  //   300: Color.fromRGBO(129, 199, 132, 1),
  //   400: Color.fromRGBO(102, 187, 106, 1),
  //   500: Color.fromRGBO(76, 175, 80, 1),
  //   600: Color.fromRGBO(67, 160, 71, 1),
  //   700: Color.fromRGBO(56, 142, 60, 1),
  //   800: Color.fromRGBO(46, 125, 50, 1),
  //   900: Color.fromRGBO(27, 94, 32, 1),
  // };
  //
  // static const MyMaterialColor green = MyMaterialColor(_COLOR_GREEN_HEX, _COLOR_GREEN_MAP);
  //
  // ///////////////COLOR LIGHT_GREEN///////////////
  // static const int _COLOR_LIGHT_GREEN_HEX = 0xFF558B2F;
  // static const Map<int, Color> _COLOR_LIGHT_GREEN_MAP = {
  //   50: Color.fromRGBO(241, 248, 233, 1),
  //   100: Color.fromRGBO(220, 237, 200, 1),
  //   200: Color.fromRGBO(197, 225, 165, 1),
  //   300: Color.fromRGBO(174, 213, 129, 1),
  //   400: Color.fromRGBO(156, 204, 101, 1),
  //   500: Color.fromRGBO(139, 195, 74, 1),
  //   600: Color.fromRGBO(124, 179, 66, 1),
  //   700: Color.fromRGBO(104, 159, 56, 1),
  //   800: Color.fromRGBO(85, 139, 47, 1),
  //   900: Color.fromRGBO(51, 105, 30, 1),
  // };
  //
  // static const MyMaterialColor light_green = MyMaterialColor(_COLOR_LIGHT_GREEN_HEX, _COLOR_LIGHT_GREEN_MAP);
  //
  // ///////////////COLOR LIME///////////////
  // static const int _COLOR_LIME_HEX = 0xFF9E9D24;
  // static const Map<int, Color> _COLOR_LIME_MAP = {
  //   50: Color.fromRGBO(249, 251, 231, 1),
  //   100: Color.fromRGBO(240, 244, 195, 1),
  //   200: Color.fromRGBO(230, 238, 156, 1),
  //   300: Color.fromRGBO(220, 231, 117, 1),
  //   400: Color.fromRGBO(212, 225, 87, 1),
  //   500: Color.fromRGBO(205, 220, 57, 1),
  //   600: Color.fromRGBO(192, 202, 51, 1),
  //   700: Color.fromRGBO(175, 180, 43, 1),
  //   800: Color.fromRGBO(158, 157, 36, 1),
  //   900: Color.fromRGBO(130, 119, 23, 1),
  // };
  //
  // static const MyMaterialColor lime = MyMaterialColor(_COLOR_LIME_HEX, _COLOR_LIME_MAP);
  //
  // ///////////////COLOR YELLOW///////////////
  // static const int _COLOR_YELLOW_HEX = 0xFFF9A825;
  // static const Map<int, Color> _COLOR_YELLOW_MAP = {
  //   50: Color.fromRGBO(255, 253, 231, 1),
  //   100: Color.fromRGBO(255, 249, 196, 1),
  //   200: Color.fromRGBO(255, 245, 157, 1),
  //   300: Color.fromRGBO(255, 241, 118, 1),
  //   400: Color.fromRGBO(255, 238, 88, 1),
  //   500: Color.fromRGBO(255, 235, 59, 1),
  //   600: Color.fromRGBO(253, 216, 53, 1),
  //   700: Color.fromRGBO(251, 192, 45, 1),
  //   800: Color.fromRGBO(249, 168, 37, 1),
  //   900: Color.fromRGBO(245, 127, 23, 1),
  // };
  //
  // static const MyMaterialColor yellow = MyMaterialColor(_COLOR_YELLOW_HEX, _COLOR_YELLOW_MAP);
  //
  // ///////////////COLOR AMBER///////////////
  // static const int _COLOR_AMBER_HEX = 0xFFFF8F00;
  // static const Map<int, Color> _COLOR_AMBER_MAP = {
  //   50: Color.fromRGBO(255, 248, 225, 1),
  //   100: Color.fromRGBO(255, 236, 179, 1),
  //   200: Color.fromRGBO(255, 224, 130, 1),
  //   300: Color.fromRGBO(255, 213, 79, 1),
  //   400: Color.fromRGBO(255, 202, 40, 1),
  //   500: Color.fromRGBO(255, 193, 7, 1),
  //   600: Color.fromRGBO(255, 179, 0, 1),
  //   700: Color.fromRGBO(255, 160, 0, 1),
  //   800: Color.fromRGBO(255, 143, 0, 1),
  //   900: Color.fromRGBO(255, 111, 0, 1),
  // };
  //
  // static const MyMaterialColor amber = MyMaterialColor(_COLOR_AMBER_HEX, _COLOR_AMBER_MAP);
  //
  // ///////////////COLOR ORANGE///////////////
  // static const int _COLOR_ORANGE_HEX = 0xFFEF6C00;
  // static const Map<int, Color> _COLOR_ORANGE_MAP = {
  //   50: Color.fromRGBO(255, 243, 224, 1),
  //   100: Color.fromRGBO(255, 224, 178, 1),
  //   200: Color.fromRGBO(255, 204, 128, 1),
  //   300: Color.fromRGBO(255, 183, 77, 1),
  //   400: Color.fromRGBO(255, 167, 38, 1),
  //   500: Color.fromRGBO(255, 152, 0, 1),
  //   600: Color.fromRGBO(251, 140, 0, 1),
  //   700: Color.fromRGBO(245, 124, 0, 1),
  //   800: Color.fromRGBO(239, 108, 0, 1),
  //   900: Color.fromRGBO(230, 81, 0, 1),
  // };
  //
  // static const MyMaterialColor orange = MyMaterialColor(_COLOR_ORANGE_HEX, _COLOR_ORANGE_MAP);
  //
  // ///////////////COLOR DEEP_ORANGE///////////////
  // static const int _COLOR_DEEP_ORANGE_HEX = 0xFFD84315;
  // static const Map<int, Color> _COLOR_DEEP_ORANGE_MAP = {
  //   50: Color.fromRGBO(251, 233, 231, 1),
  //   100: Color.fromRGBO(255, 204, 188, 1),
  //   200: Color.fromRGBO(255, 171, 145, 1),
  //   300: Color.fromRGBO(255, 138, 101, 1),
  //   400: Color.fromRGBO(255, 112, 67, 1),
  //   500: Color.fromRGBO(255, 87, 34, 1),
  //   600: Color.fromRGBO(244, 81, 30, 1),
  //   700: Color.fromRGBO(230, 74, 25, 1),
  //   800: Color.fromRGBO(216, 67, 21, 1),
  //   900: Color.fromRGBO(191, 54, 12, 1),
  // };
  //
  // static const MyMaterialColor deep_orange = MyMaterialColor(_COLOR_DEEP_ORANGE_HEX, _COLOR_DEEP_ORANGE_MAP);
  //
  // ///////////////COLOR BROWN///////////////
  // static const int _COLOR_BROWN_HEX = 0xFF4E342E;
  // static const Map<int, Color> _COLOR_BROWN_MAP = {
  //   50: Color.fromRGBO(239, 235, 233, 1),
  //   100: Color.fromRGBO(215, 204, 200, 1),
  //   200: Color.fromRGBO(188, 170, 164, 1),
  //   300: Color.fromRGBO(161, 136, 127, 1),
  //   400: Color.fromRGBO(141, 110, 99, 1),
  //   500: Color.fromRGBO(121, 85, 72, 1),
  //   600: Color.fromRGBO(109, 76, 65, 1),
  //   700: Color.fromRGBO(93, 64, 55, 1),
  //   800: Color.fromRGBO(78, 52, 46, 1),
  //   900: Color.fromRGBO(62, 39, 35, 1),
  // };
  //
  // static const MyMaterialColor brown = MyMaterialColor(_COLOR_BROWN_HEX, _COLOR_BROWN_MAP);
  //
  // ///////////////COLOR GREY///////////////
  // static const int _COLOR_GREY_HEX = 0xFF424242;
  // static const Map<int, Color> _COLOR_GREY_MAP = {
  //   50: Color.fromRGBO(250, 250, 250, 1),
  //   100: Color.fromRGBO(245, 245, 245, 1),
  //   200: Color.fromRGBO(238, 238, 238, 1),
  //   300: Color.fromRGBO(224, 224, 224, 1),
  //   400: Color.fromRGBO(189, 189, 189, 1),
  //   500: Color.fromRGBO(158, 158, 158, 1),
  //   600: Color.fromRGBO(117, 117, 117, 1),
  //   700: Color.fromRGBO(97, 97, 97, 1),
  //   800: Color.fromRGBO(66, 66, 66, 1),
  //   900: Color.fromRGBO(33, 33, 33, 1),
  // };
  //
  // static const MyMaterialColor grey = MyMaterialColor(_COLOR_GREY_HEX, _COLOR_GREY_MAP);
  //
  // ///////////////COLOR BLUE_GREY///////////////
  // static const int _COLOR_BLUE_GREY_HEX = 0xFF37474F;
  // static const Map<int, Color> _COLOR_BLUE_GREY_MAP = {
  //   50: Color.fromRGBO(236, 239, 241, 1),
  //   100: Color.fromRGBO(207, 216, 220, 1),
  //   200: Color.fromRGBO(176, 190, 197, 1),
  //   300: Color.fromRGBO(144, 164, 174, 1),
  //   400: Color.fromRGBO(120, 144, 156, 1),
  //   500: Color.fromRGBO(96, 125, 139, 1),
  //   600: Color.fromRGBO(84, 110, 122, 1),
  //   700: Color.fromRGBO(69, 90, 100, 1),
  //   800: Color.fromRGBO(55, 71, 79, 1),
  //   900: Color.fromRGBO(38, 50, 56, 1),
  // };
  //
  // static const MyMaterialColor blue_grey = MyMaterialColor(_COLOR_BLUE_GREY_HEX, _COLOR_BLUE_GREY_MAP);

  /////////////////////////////////////////////////////////////////////////////
  //////////////////////SEPARATE COLORS OF SHADED//////////////////////////////
  /////////////////////////////////////////////////////////////////////////////

  ///////////////COLOR RED///////////////
  static const Color red50 = Color.fromRGBO(255, 235, 238, 1);
  static const Color red100 = Color.fromRGBO(255, 205, 210, 1);
  static const Color red200 = Color.fromRGBO(239, 154, 154, 1);
  static const Color red300 = Color.fromRGBO(229, 115, 115, 1);
  static const Color red400 = Color.fromRGBO(239, 83, 80, 1);
  static const Color red500 = Color.fromRGBO(244, 67, 54, 1);
  static const Color red600 = Color.fromRGBO(229, 57, 53, 1);
  static const Color red700 = Color.fromRGBO(211, 47, 47, 1);
  static const Color red800 = Color.fromRGBO(198, 40, 40, 1);
  static const Color red = Color.fromRGBO(183, 28, 28, 1);

  ///////////////COLOR PINK///////////////
  static const Color pink50 = Color.fromRGBO(252, 228, 236, 1);
  static const Color pink100 = Color.fromRGBO(248, 187, 208, 1);
  static const Color pink200 = Color.fromRGBO(244, 143, 177, 1);
  static const Color pink300 = Color.fromRGBO(240, 98, 146, 1);
  static const Color pink400 = Color.fromRGBO(236, 64, 122, 1);
  static const Color pink500 = Color.fromRGBO(233, 30, 99, 1);
  static const Color pink600 = Color.fromRGBO(216, 27, 96, 1);
  static const Color pink700 = Color.fromRGBO(194, 24, 91, 1);
  static const Color pink800 = Color.fromRGBO(173, 20, 87, 1);
  static const Color pink = Color.fromRGBO(136, 14, 79, 1);

  ///////////////COLOR PURPLE///////////////
  static const Color purple50 = Color.fromRGBO(243, 229, 245, 1);
  static const Color purple100 = Color.fromRGBO(225, 190, 231, 1);
  static const Color purple200 = Color.fromRGBO(206, 147, 216, 1);
  static const Color purple300 = Color.fromRGBO(186, 104, 200, 1);
  static const Color purple400 = Color.fromRGBO(171, 71, 188, 1);
  static const Color purple500 = Color.fromRGBO(156, 39, 176, 1);
  static const Color purple600 = Color.fromRGBO(142, 36, 170, 1);
  static const Color purple700 = Color.fromRGBO(123, 31, 162, 1);
  static const Color purple800 = Color.fromRGBO(106, 27, 154, 1);
  static const Color purple = Color.fromRGBO(74, 20, 140, 1);

  ///////////////COLOR DEEP_PURPLE///////////////
  static const Color deep_purple50 = Color.fromRGBO(237, 231, 246, 1);
  static const Color deep_purple100 = Color.fromRGBO(209, 196, 233, 1);
  static const Color deep_purple200 = Color.fromRGBO(179, 157, 219, 1);
  static const Color deep_purple300 = Color.fromRGBO(149, 117, 205, 1);
  static const Color deep_purple400 = Color.fromRGBO(126, 87, 194, 1);
  static const Color deep_purple500 = Color.fromRGBO(103, 58, 183, 1);
  static const Color deep_purple600 = Color.fromRGBO(94, 53, 177, 1);
  static const Color deep_purple700 = Color.fromRGBO(81, 45, 168, 1);
  static const Color deep_purple800 = Color.fromRGBO(69, 39, 160, 1);
  static const Color deep_purple = Color.fromRGBO(49, 27, 146, 1);

  ///////////////COLOR INDIGO///////////////
  static const Color indigo50 = Color.fromRGBO(232, 234, 246, 1);
  static const Color indigo100 = Color.fromRGBO(197, 202, 233, 1);
  static const Color indigo200 = Color.fromRGBO(159, 168, 218, 1);
  static const Color indigo300 = Color.fromRGBO(121, 134, 203, 1);
  static const Color indigo400 = Color.fromRGBO(92, 107, 192, 1);
  static const Color indigo500 = Color.fromRGBO(63, 81, 181, 1);
  static const Color indigo600 = Color.fromRGBO(57, 73, 171, 1);
  static const Color indigo700 = Color.fromRGBO(48, 63, 159, 1);
  static const Color indigo800 = Color.fromRGBO(40, 53, 147, 1);
  static const Color indigo = Color.fromRGBO(26, 35, 126, 1);

  ///////////////COLOR BLUE///////////////
  static const Color blue50 = Color.fromRGBO(227, 242, 253, 1);
  static const Color blue100 = Color.fromRGBO(187, 222, 251, 1);
  static const Color blue200 = Color.fromRGBO(144, 202, 249, 1);
  static const Color blue300 = Color.fromRGBO(100, 181, 246, 1);
  static const Color blue400 = Color.fromRGBO(66, 165, 245, 1);
  static const Color blue500 = Color.fromRGBO(33, 150, 243, 1);
  static const Color blue600 = Color.fromRGBO(30, 136, 229, 1);
  static const Color blue700 = Color.fromRGBO(25, 118, 210, 1);
  static const Color blue800 = Color.fromRGBO(21, 101, 192, 1);
  static const Color blue = Color.fromRGBO(13, 71, 161, 1);

  ///////////////COLOR LIGHT_BLUE///////////////
  static const Color light_blue50 = Color.fromRGBO(225, 245, 254, 1);
  static const Color light_blue100 = Color.fromRGBO(179, 229, 252, 1);
  static const Color light_blue200 = Color.fromRGBO(129, 212, 250, 1);
  static const Color light_blue300 = Color.fromRGBO(79, 195, 247, 1);
  static const Color light_blue400 = Color.fromRGBO(41, 182, 246, 1);
  static const Color light_blue500 = Color.fromRGBO(3, 169, 244, 1);
  static const Color light_blue600 = Color.fromRGBO(3, 155, 229, 1);
  static const Color light_blue700 = Color.fromRGBO(2, 136, 209, 1);
  static const Color light_blue800 = Color.fromRGBO(2, 119, 189, 1);
  static const Color light_blue = Color.fromRGBO(1, 87, 155, 1);

  ///////////////COLOR CYAN///////////////
  static const Color cyan50 = Color.fromRGBO(224, 247, 250, 1);
  static const Color cyan100 = Color.fromRGBO(178, 235, 242, 1);
  static const Color cyan200 = Color.fromRGBO(128, 222, 234, 1);
  static const Color cyan300 = Color.fromRGBO(77, 208, 225, 1);
  static const Color cyan400 = Color.fromRGBO(38, 198, 218, 1);
  static const Color cyan500 = Color.fromRGBO(0, 188, 212, 1);
  static const Color cyan600 = Color.fromRGBO(0, 172, 193, 1);
  static const Color cyan700 = Color.fromRGBO(0, 151, 167, 1);
  static const Color cyan800 = Color.fromRGBO(0, 131, 143, 1);
  static const Color cyan = Color.fromRGBO(0, 96, 100, 1);

  ///////////////COLOR TEAL///////////////
  static const Color teal50 = Color.fromRGBO(224, 242, 241, 1);
  static const Color teal100 = Color.fromRGBO(178, 223, 219, 1);
  static const Color teal200 = Color.fromRGBO(128, 203, 196, 1);
  static const Color teal300 = Color.fromRGBO(77, 182, 172, 1);
  static const Color teal400 = Color.fromRGBO(38, 166, 154, 1);
  static const Color teal500 = Color.fromRGBO(0, 150, 136, 1);
  static const Color teal600 = Color.fromRGBO(0, 137, 123, 1);
  static const Color teal700 = Color.fromRGBO(0, 121, 107, 1);
  static const Color teal800 = Color.fromRGBO(0, 105, 92, 1);
  static const Color teal = Color.fromRGBO(0, 77, 64, 1);

  ///////////////COLOR GREEN///////////////
  static const Color green50 = Color.fromRGBO(232, 245, 233, 1);
  static const Color green100 = Color.fromRGBO(200, 230, 201, 1);
  static const Color green200 = Color.fromRGBO(165, 214, 167, 1);
  static const Color green300 = Color.fromRGBO(129, 199, 132, 1);
  static const Color green400 = Color.fromRGBO(102, 187, 106, 1);
  static const Color green500 = Color.fromRGBO(76, 175, 80, 1);
  static const Color green600 = Color.fromRGBO(67, 160, 71, 1);
  static const Color green700 = Color.fromRGBO(56, 142, 60, 1);
  static const Color green800 = Color.fromRGBO(46, 125, 50, 1);
  static const Color green = Color.fromRGBO(27, 94, 32, 1);

  ///////////////COLOR LIGHT_GREEN///////////////
  static const Color light_green50 = Color.fromRGBO(241, 248, 233, 1);
  static const Color light_green100 = Color.fromRGBO(220, 237, 200, 1);
  static const Color light_green200 = Color.fromRGBO(197, 225, 165, 1);
  static const Color light_green300 = Color.fromRGBO(174, 213, 129, 1);
  static const Color light_green400 = Color.fromRGBO(156, 204, 101, 1);
  static const Color light_green500 = Color.fromRGBO(139, 195, 74, 1);
  static const Color light_green600 = Color.fromRGBO(124, 179, 66, 1);
  static const Color light_green700 = Color.fromRGBO(104, 159, 56, 1);
  static const Color light_green800 = Color.fromRGBO(85, 139, 47, 1);
  static const Color light_green = Color.fromRGBO(51, 105, 30, 1);

  ///////////////COLOR LIME///////////////
  static const Color lime50 = Color.fromRGBO(249, 251, 231, 1);
  static const Color lime100 = Color.fromRGBO(240, 244, 195, 1);
  static const Color lime200 = Color.fromRGBO(230, 238, 156, 1);
  static const Color lime300 = Color.fromRGBO(220, 231, 117, 1);
  static const Color lime400 = Color.fromRGBO(212, 225, 87, 1);
  static const Color lime500 = Color.fromRGBO(205, 220, 57, 1);
  static const Color lime600 = Color.fromRGBO(192, 202, 51, 1);
  static const Color lime700 = Color.fromRGBO(175, 180, 43, 1);
  static const Color lime800 = Color.fromRGBO(158, 157, 36, 1);
  static const Color lime = Color.fromRGBO(130, 119, 23, 1);

  ///////////////COLOR YELLOW///////////////
  static const Color yellow50 = Color.fromRGBO(255, 253, 231, 1);
  static const Color yellow100 = Color.fromRGBO(255, 249, 196, 1);
  static const Color yellow200 = Color.fromRGBO(255, 245, 157, 1);
  static const Color yellow300 = Color.fromRGBO(255, 241, 118, 1);
  static const Color yellow400 = Color.fromRGBO(255, 238, 88, 1);
  static const Color yellow500 = Color.fromRGBO(255, 235, 59, 1);
  static const Color yellow600 = Color.fromRGBO(253, 216, 53, 1);
  static const Color yellow700 = Color.fromRGBO(251, 192, 45, 1);
  static const Color yellow800 = Color.fromRGBO(249, 168, 37, 1);
  static const Color yellow = Color.fromRGBO(245, 127, 23, 1);

  ///////////////COLOR AMBER///////////////
  static const Color amber50 = Color.fromRGBO(255, 248, 225, 1);
  static const Color amber100 = Color.fromRGBO(255, 236, 179, 1);
  static const Color amber200 = Color.fromRGBO(255, 224, 130, 1);
  static const Color amber300 = Color.fromRGBO(255, 213, 79, 1);
  static const Color amber400 = Color.fromRGBO(255, 202, 40, 1);
  static const Color amber500 = Color.fromRGBO(255, 193, 7, 1);
  static const Color amber600 = Color.fromRGBO(255, 179, 0, 1);
  static const Color amber700 = Color.fromRGBO(255, 160, 0, 1);
  static const Color amber800 = Color.fromRGBO(255, 143, 0, 1);
  static const Color amber = Color.fromRGBO(255, 111, 0, 1);

  ///////////////COLOR ORANGE///////////////
  static const Color orange50 = Color.fromRGBO(255, 243, 224, 1);
  static const Color orange100 = Color.fromRGBO(255, 224, 178, 1);
  static const Color orange200 = Color.fromRGBO(255, 204, 128, 1);
  static const Color orange300 = Color.fromRGBO(255, 183, 77, 1);
  static const Color orange400 = Color.fromRGBO(255, 167, 38, 1);
  static const Color orange500 = Color.fromRGBO(255, 152, 0, 1);
  static const Color orange600 = Color.fromRGBO(251, 140, 0, 1);
  static const Color orange700 = Color.fromRGBO(245, 124, 0, 1);
  static const Color orange800 = Color.fromRGBO(239, 108, 0, 1);
  static const Color orange = Color.fromRGBO(230, 81, 0, 1);

  ///////////////COLOR DEEP_ORANGE///////////////
  static const Color deep_orange50 = Color.fromRGBO(251, 233, 231, 1);
  static const Color deep_orange100 = Color.fromRGBO(255, 204, 188, 1);
  static const Color deep_orange200 = Color.fromRGBO(255, 171, 145, 1);
  static const Color deep_orange300 = Color.fromRGBO(255, 138, 101, 1);
  static const Color deep_orange400 = Color.fromRGBO(255, 112, 67, 1);
  static const Color deep_orange500 = Color.fromRGBO(255, 87, 34, 1);
  static const Color deep_orange600 = Color.fromRGBO(244, 81, 30, 1);
  static const Color deep_orange700 = Color.fromRGBO(230, 74, 25, 1);
  static const Color deep_orange800 = Color.fromRGBO(216, 67, 21, 1);
  static const Color deep_orange = Color.fromRGBO(191, 54, 12, 1);

  ///////////////COLOR BROWN///////////////
  static const Color brown50 = Color.fromRGBO(239, 235, 233, 1);
  static const Color brown100 = Color.fromRGBO(215, 204, 200, 1);
  static const Color brown200 = Color.fromRGBO(188, 170, 164, 1);
  static const Color brown300 = Color.fromRGBO(161, 136, 127, 1);
  static const Color brown400 = Color.fromRGBO(141, 110, 99, 1);
  static const Color brown500 = Color.fromRGBO(121, 85, 72, 1);
  static const Color brown600 = Color.fromRGBO(109, 76, 65, 1);
  static const Color brown700 = Color.fromRGBO(93, 64, 55, 1);
  static const Color brown800 = Color.fromRGBO(78, 52, 46, 1);
  static const Color brown = Color.fromRGBO(62, 39, 35, 1);

  ///////////////COLOR GREY///////////////
  static const Color grey50 = Color.fromRGBO(250, 250, 250, 1);
  static const Color grey100 = Color.fromRGBO(245, 245, 245, 1);
  static const Color grey200 = Color.fromRGBO(238, 238, 238, 1);
  static const Color grey300 = Color.fromRGBO(224, 224, 224, 1);
  static const Color grey400 = Color.fromRGBO(189, 189, 189, 1);
  static const Color grey500 = Color.fromRGBO(158, 158, 158, 1);
  static const Color grey600 = Color.fromRGBO(117, 117, 117, 1);
  static const Color grey700 = Color.fromRGBO(97, 97, 97, 1);
  static const Color grey800 = Color.fromRGBO(66, 66, 66, 1);
  static const Color grey = Color.fromRGBO(33, 33, 33, 1);

  ///////////////COLOR BLUE_GREY///////////////
  static const Color blue_grey50 = Color.fromRGBO(236, 239, 241, 1);
  static const Color blue_grey100 = Color.fromRGBO(207, 216, 220, 1);
  static const Color blue_grey200 = Color.fromRGBO(176, 190, 197, 1);
  static const Color blue_grey300 = Color.fromRGBO(144, 164, 174, 1);
  static const Color blue_grey400 = Color.fromRGBO(120, 144, 156, 1);
  static const Color blue_grey500 = Color.fromRGBO(96, 125, 139, 1);
  static const Color blue_grey600 = Color.fromRGBO(84, 110, 122, 1);
  static const Color blue_grey700 = Color.fromRGBO(69, 90, 100, 1);
  static const Color blue_grey800 = Color.fromRGBO(55, 71, 79, 1);
  static const Color blue_grey = Color.fromRGBO(38, 50, 56, 1);
}

// class MyMaterialColor {
//   final int primary;
//   final Map<int, Color> swatch;
//
//   const MyMaterialColor(this.primary, this.swatch);
//
//   /// The lightest shade.
//   Color get shade50 => swatch[50];
//
//   /// The second lightest shade.
//   Color get shade100 => swatch[100];
//
//   /// The third lightest shade.
//   Color get shade200 => swatch[200];
//
//   /// The fourth lightest shade.
//   Color get shade300 => swatch[300];
//
//   /// The fifth lightest shade.
//   Color get shade400 => swatch[400];
//
//   /// The default shade.
//   Color get shade500 => swatch[500];
//
//   /// The fourth darkest shade.
//   Color get shade600 => swatch[600];
//
//   /// The third darkest shade.
//   Color get shade700 => swatch[700];
//
//   /// The second darkest shade.
//   Color get shade800 => swatch[800];
//
//   /// The darkest shade.
//   Color get shade900 => swatch[900];
// }
