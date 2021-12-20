import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon_scales.dart';

part 'home_icon_scales.freezed.dart';

@freezed
class HomeIconScales with _$HomeIconScales {
  factory HomeIconScales({
    required AppIconScales appIconScales,
    required double rate,
  }) = _HomeIconScales;

  HomeIconScales._();

  late final areaSize = Size(
    appIconScales.iconSize + textAreaHeight,
    appIconScales.iconSize,
  );

  late final double textAreaHeight = 3.0 * rate;
}
