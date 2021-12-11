import 'package:flutter/material.dart';
import 'package:ios_springboard/component/home/app_icon/app_icon_scales.dart';

class HomeIconScales {
  HomeIconScales._();

  static const areaSize = Size(
    AppIconScales.iconSize + textAreaHeight,
    AppIconScales.iconSize,
  );
  static const textAreaHeight = 3.0;
}
