import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeConfig {
  static SizeConfig? _instance;

  static SizeConfig get instance {
    if (_instance == null) {
      _instance = SizeConfig.init();
    }
    return _instance!;
  }

  late double screenWidth;
  late double screenHeight;
  late double blockSizeHorizontal;
  late double blockSizeVertical;

  late double _safeAreaHorizontal;
  late double _safeAreaVertical;
  late double safeBlockHorizontal;
  late double safeBlockVertical;

  SizeConfig.init() {
    MediaQueryData _mediaQueryData = Get.context!.mediaQuery;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

extension SizeExtOnDouble on num {
  double get w => this * SizeConfig.instance.safeBlockHorizontal;

  double get h => this * SizeConfig.instance.safeBlockVertical;

  Widget get vs => SizedBox(width: 0, height: this.toDouble());

  Widget get hs => SizedBox(width: this.toDouble(), height: 0);
}
